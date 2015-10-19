var express = require('express');
var router = express.Router();
var user;
var id_user=1;
var sha1=require('sha1');
var session = require('express-session');

router.use(session({
  secret: 'session_cookie_secret',
  resave: true,
  saveUninitialized: true
}));

/* GET home page. */
router.get('/', function(req, res, next) {
  console.log('Cookies en /:');
  console.log(req.cookies);
  console.log('---------------');
  res.render('login', { title: 'Express' });
  console.log(req.session);
});

router.post('/login', function(req, res, next) {
  var username=req.body.username;
  var password=req.body.password;

  var passEncriptada = sha1(password);

  getUser(username, function(err, result){
    if (result.length == 0 || passEncriptada != result[0].password) {
      res.send('ERROR');
    }else{
      user={username: result[0].userName, roles:result[0].roles};
      req.session.user = user;
      var hour = 3600000; //Una hora 3600000
      req.session.cookie.expires = new Date(Date.now() + hour);
      req.session.cookie.maxAge = hour;
      console.log('Cookies en /login:');
      console.log(req.cookies);
      console.log('---------------');
      console.log(req.session);
      console.log('GET login: '+req.session.user.username+': '+req.sessionID);
      res.send(user);
    }
  });
});

router.get('/logout', function(req, res, next) {
  var sessionID=req.sessionID;
  var username=req.session.user.username;
  var path=req.session.cookie.path;
  var expires=req.session.cookie.expires;
  var maxAge=req.session.cookie.maxAge;
  getSession(username, function(err, result){
      if (result.length == 0){
          insertSession(sessionID, username, path, expires, maxAge, function(err, result){});
        }else{
          updateSession(sessionID, username, path, expires, maxAge,function(err, result){});
        }
  });
  req.session.destroy();
  res.clearCookie('username');
  res.clearCookie('roles');
  res.redirect('/');
});

router.post('/mainMen', function(req, res, next) {
  getSession(req.session.user.username, function(err, result){
      if (result.length == 0){
          res.redirect('/mainMenu'); //si no existe una sesion en bd sigue el camino normal
        }else{
          res.redirect(result[0].path); //funciona va al path / y carga home
        }
  });
});

router.get('/mainMenu', function(req, res, next) {
  console.log('Cookies en /mainMenu:');
  console.log(req.cookies);
  console.log('---------------');
  console.log(req.session);
      if(typeof req.session.user == 'undefined'){
        res.redirect('/');
      }else{
        console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
        req.session.cookie.path='/mainMenu';
        res.render('mainMenu');
      }
});

router.post('/newUse', function(req, res, next) {
  res.redirect('/newUser');
});

router.get('/newUser', function(req, res, next) {
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
    req.session.cookie.path='/newUser';
    res.render('newUser');
  }
});

router.post('/checkUser', function(req, res, next) {
  var username=req.body.username;

  getUser(username, function(err, result){
  	console.log(result);
    if (result.length != 0) {
    	res.send('ERROR');
    }else{
      res.send('OK');
    }
  });
});

router.post('/insertUser', function(req, res, next) {

  var firstname=req.body.firstname;
  var lastname=req.body.lastname;
  var username=req.body.username;
  var password=req.body.password;
  var email=req.body.email;
  var roles=req.body.role;
  console.log('booooody: '+firstname);
  console.log('Roles: '+roles);
  var comments=req.body.comments;
    maxIdUser(function(err, rows){
      console.log(rows);
      var id_string = JSON.stringify(rows);
      id_string = id_string.replace('max(id)','');
      id_string = id_string.replace('"','');
      id_string = id_string.replace('"','');
      id_string = id_string.replace(':','');
      id_string = id_string.replace('[{','');
      id_string = id_string.replace('}]','');
      if(id_string!='null'){
        id_user=parseInt(id_string)+1;
      }else{
        id_user=1;
      }
      console.log(id_user);
      var passEncriptada = sha1(password);

      insertUser(id_user, firstname, lastname, username, passEncriptada, email, roles, comments, function(err, result){
          id_user=id_user+1;
          res.render('users');
      });
    });
});

router.get('/allUsers', function(req, res, next) {
    getAllUsers(function(err, result){
        if (result.length == 0) {        
          res.send('ERROR');
        }else{
          res.send(result);
        }
    });
});

module.exports = router;
