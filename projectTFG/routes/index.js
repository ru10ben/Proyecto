var express = require('express');
var router = express.Router();

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
      var user={username: result[0].userName, roles:result[0].roles}
      res.send(user);
    }
  });
});

module.exports = router;
