var express = require('express');
var router = express.Router();
var user;
var id_user=1;
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('login', { title: 'Express' });
});

router.post('/log', function(req, res, next) {
  //res.render('login', { title: 'Express' });
  var username=req.body.username;
  var password=req.body.password;

  getUser(username, function(err, result){
    if (result.length == 0 || password != result[0].password) {
      res.send('ERROR');
    }else{
      user={username: result[0].userName, roles:result[0].roles}
      res.send(user);
    }
  });
});

router.get('/mainMenu', function(req, res, next) {
   console.log(user.username);
   res.render('mainMenu');
});

router.get('/newUser', function(req, res, next) {
  res.render('newUser');
});

router.post('/newUser/insertUser', function(req, res, next) {
  //res.render('login', { title: 'Express' });
  var firstname=req.body.firstname;
  var lastname=req.body.lastname;
  var username=req.body.username;
  var password=req.body.password;
  var email=req.body.email;
  var roles=req.body.role;
  console.log('Roles: '+roles);
  var comments=req.body.comments;

  getUser(username, function(err, result){
    if (result.length == 0) {
      maxIdUser(function(err, rows){
         var id_string = JSON.stringify(rows);
         id_string = id_string.replace('max(id_user)','');
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
        insertUser(id_user, firstname, lastname, username, password, email, roles, comments, function(err, result){
            id_user=id_user+1;
            res.send('OK');
        });
      });
    }else{
      res.send('ERROR');
    }
  });
});

module.exports = router;
