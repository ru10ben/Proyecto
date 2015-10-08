var express = require('express');
var router = express.Router();
var user;
var id_user=1;

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('login', { title: 'Express' });
});

router.post('/login', function(req, res, next) {
  var username=req.body.username;
  var password=req.body.password;

  var passEncriptada = encriptar(username,password);

  getUser(username, function(err, result){
    if (result.length == 0 || passEncriptada != result[0].password) {
      res.send('ERROR');
    }else{
      user={username: result[0].userName, roles:result[0].roles}
      res.send(user);
    }
  });
});

router.post('/mainMenu', function(req, res, next) {
   res.render('mainMenu');
});

router.get('/newUser', function(req, res, next) {
  res.render('newUser');
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
      var passEncriptada = encriptar(username,password);

      insertUser(id_user, firstname, lastname, username, passEncriptada, email, roles, comments, function(err, result){
          id_user=id_user+1;
          res.send('OK');
      });
    });
});

//encript password
function encriptar(user, pass) {
   var crypto = require('crypto')
   // usamos el metodo CreateHmac y le pasamos el parametro user y actualizamos el hash con la password
   var hmac = crypto.createHmac('sha1', user).update(pass).digest('hex')
   return hmac
}

module.exports = router;
