var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('login', { title: 'Express' });
});

router.post('/log', function(req, res, next) {
  //res.render('login', { title: 'Express' });
  var name=req.body.name;
  var password=req.body.password;

  getUser(name, function(err, result){
    if (result.length == 0 || password != result[0].password) {
      res.send('ERROR');
    }else{
      res.send('OK');
    }
  });
});

module.exports = router;
