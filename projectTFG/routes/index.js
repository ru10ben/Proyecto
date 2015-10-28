var express = require('express');
var router = express.Router();
var sha1=require('sha1');
var session = require('express-session');

var user;
var id_user=1;
var nameProj;
var idProj=0;
var actualQuest='Q01';
var myQuestion;
var myClauses = new Array();
var date;


router.use(session({
  secret: 'session_cookie_secret',
  resave: true,
  saveUninitialized: true
}));

/* GET home page. */
router.get('/', function(req, res, next) {
  //console.log('Cookies en /:');
  //console.log(req.cookies);
  //console.log('---------------');
  res.render('login', { title: 'Express' });
  //console.log(req.session);
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
      date=dateFormat(new Date(Date.now() + hour));
      req.session.cookie.maxAge = hour;

      //console.log('Cookies en /login:');
      //console.log(req.cookies);
      //console.log('---------------');
      console.log(req.session);
      //console.log('GET login: '+req.session.user.username+': '+req.sessionID);
      var sessionID=req.sessionID;
      var username=req.session.user.username;
  	  var path=req.session.cookie.path;
  	  var expires=date;
  	  var maxAge=req.session.cookie.maxAge;
      getSession(username, function(err, result){
      	if (result.length == 0){
          insertSession(sessionID, username, path, expires, maxAge, function(err, result){});
        }else{
          updateSession(sessionID, username, path, expires, maxAge,function(err, result){});
        }
  	  });
      res.send(user);
    }
  });
});

router.get('/logout', function(req, res, next) {
  var sessionID=req.sessionID;
  var username=req.session.user.username;
  var path=req.session.cookie.path;
  var maxAge=req.session.cookie.maxAge;
  var expires=date;
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
      if (result[0].path == '/'){
          res.redirect('/mainMenu'); //si no existe una sesion en bd sigue el camino normal
      }else{
          res.redirect(result[0].path); //funciona va al path / y carga home
      }
  });
});

router.get('/mainMenu', function(req, res, next) {
  //console.log('Cookies en /mainMenu:');
  //console.log(req.cookies);
  //console.log('---------------');
  //console.log(req.session);
/*  var username=req.session.user.username;
  var path='/mainMenu';
  insertPath(username, path, function(err, result){});*/
  if(typeof req.session.user == 'undefined'){
  	res.redirect('/');
  }else{
    //console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
    req.session.cookie.path='/mainMenu';
    res.render('mainMenu');
  }
});

router.get('/newUser', function(req, res, next) {
/*  var username=req.session.user.username;
  var path='/mainMenu';
  insertPath(username, path, function(err, result){});*/
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    //console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
    req.session.cookie.path='/newUser';
    res.render('newUser');
  }
});

router.post('/checkUser', function(req, res, next) {
  var username=req.body.username;

  getUser(username, function(err, result){
  	//console.log(result);
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
  //console.log('booooody: '+firstname);
  //console.log('Roles: '+roles);
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

router.get('/newProject', function(req, res, next) {
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    //console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
    req.session.cookie.path='/newProjectEvaluation';
    res.render('newProjectEvaluation');
  }
});

router.post('/insertProj', function(req, res, next) {
  var name=req.body.name;
  nameProj=name;
  var description=req.body.description;
  console.log(name+' '+description);

  idProj=idProj+1;
  actualQuest='Q01';
  var myHelp;

  insertProject(idProj, name, description, function(err, results){});

  getQuestion(actualQuest, function(err, results){
    myQuestion=results[0].text;
    console.log(myQuestion);
  });

  getHelp(actualQuest, function(err, results){
    myHelp=results[0].help;
    console.log(myHelp);
  });

  getClauses(function(err, results){
    for (var i = 0; i < results.length; i++) {
      myClauses[i]= results[i].id+' '+results[i].title; //Poner clauses formato adecuado
    };
    console.log(myClauses);
    //render=[tittleApp,name,myQuestion,myHelp,myClauses];
    res.render('ictFeatures');
  }); 
});

function dateFormat(date){
	var month=date.getMonth()+1;
	var result=date.getFullYear()+'-'+month+'-'+date.getDate()+' '+date.getHours()+':'+date.getMinutes()+':'+date.getSeconds();
	return result;
}

module.exports = router;
