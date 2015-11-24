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
var date;
var nextQuest;
var idClauses = new Array();
var idAns=1;

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
    var hour = 3600000; //Una hora 3600000
    req.session.cookie.maxAge = hour;
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
    var hour = 3600000; //Una hora 3600000
    req.session.cookie.maxAge = hour;
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
      var hour = 3600000; //Una hora 3600000
      req.session.cookie.maxAge = hour;
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
          var hour = 3600000; //Una hora 3600000
          req.session.cookie.maxAge = hour;
          res.render('users');
      });
    });
});

router.get('/allUsers', function(req, res, next) {
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    //console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
    req.session.cookie.path='/allUsers';
    getAllUsers(function(err, result){
        if (result.length == 0) {        
          res.send('ERROR');
        }else{
          var hour = 3600000; //Una hora 3600000
          req.session.cookie.maxAge = hour;
          res.send(result);
        }
    });
  }
});

router.get('/newProject', function(req, res, next) {
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    //console.log('GET mainMenu: '+req.session.user.username+': '+req.sessionID); //da error si expira la session
    var hour = 3600000; //Una hora 3600000
    req.session.cookie.maxAge = hour;
    req.session.cookie.path='/newProject';
    res.render('newProjectEvaluation');
  }
});

router.get('/getData', function(req, res, next) {
  var myClauses = new Array();
  actualQuest='Q01';
  var myHelp;

  getQuestion(actualQuest, function(err, results){
    myQuestion=results[0].text;
    //console.log(myQuestion);
  });

  getHelp(actualQuest, function(err, results){
    myHelp=results[0].help;
    //console.log(myHelp);
  });
  var idProject=0;
  maxIdProject(function(err, rows){
    var id_string = JSON.stringify(rows);
    id_string = id_string.replace('max(id)','');
    id_string = id_string.replace('"','');
    id_string = id_string.replace('"','');
    id_string = id_string.replace(':','');
    id_string = id_string.replace('[{','');
    id_string = id_string.replace('}]','');
    if(id_string!='null'){
      idProject=parseInt(id_string)+1;
    }else{
      idProject=1;
    }
    miProyecto=new Proyecto(idProject);////
  });

  getClauses(function(err, results){
    for (var i = 0; i < results.length; i++) {
      myClauses[i]= results[i].id+' '+results[i].title; //Poner clauses formato adecuado
    };
    //console.log(myClauses);
    var render={idProject: miProyecto.id,question:myQuestion,help:myHelp,clauses:myClauses};
    var hour = 3600000; //Una hora 3600000
    req.session.cookie.maxAge = hour;
    res.send(render);
  }); 
});

router.post('/insertProj', function(req, res, next) {
  var name=req.body.name;
  nameProj=name;
  var description=req.body.description;
  var username=req.session.user.username;
    getUser(username, function(err, result){
      var idUser=result[0].id;
      insertProject(miProyecto.id, idUser, name, description, function(err, results){});
      res.redirect('/ictFeatures');
    });
});

router.get('/ictFeatures', function(req, res, next) {
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    var hour = 3600000; //Una hora 3600000
    req.session.cookie.maxAge = hour;
    req.session.cookie.path='/ictFeatures';
    //myHistoric = new Array(); //Array providedAns

    res.render('ictFeatures');
  }
});

router.post('/next',function(req,res){
  var answer=req.body.answer;
  var idProject=req.body.idProject;
  var myClauses=req.body.clauses;
  var myHistoric=req.body.historic;
  //console.log(myClauses);
  if(typeof myHistoric == 'undefined'){
    myHistoric=[];
  }
  if(typeof myClauses == 'undefined'){
    myClauses=[];
  }
  var nextAns;
  //var historic='';
  var myHelp2;
  actualQuest=req.body.actualQuest;
  var hour = 3600000; //Una hora 3600000
  req.session.cookie.maxAge = hour;
   if(answer=='No'){
    //Problema de concurrencia
    insertAnswers(idAns, actualQuest, idProject,answer, function(err, results){});
    idAns=idAns+1;
    var historic = '['+answer+'] -> '+myQuestion;
    myHistoric = myHistoric.concat(historic);
    
    nextAns='nextno';
    getQuestionAns(nextAns,actualQuest, function(err, results){
      nextQuest=results[0].nextno;
      actualQuest=nextQuest;     
      nextQuest.toString();
      //console.log(nextQuest);
      if(nextQuest!=''){
        getQuestion(actualQuest, function(err, results){
          myQuestion = results[0].text;
          getHelp(actualQuest, function(err, results){
            myHelp2 = results[0].help;
            var render={actualQuest:actualQuest,question:myQuestion,help:myHelp2,clauses:myClauses,historic:myHistoric};
            res.send(render);
          });
        });
      }else{
        var render={clauses:myClauses,historic:myHistoric,message:'You have completed the evaluation'};
        res.send(render);  
      }
    });  
   }else{ //el usuario responde si y si no responde se considera si
    answer='Yes';
    insertAnswers(idAns, actualQuest, idProject,answer, function(err, results){});
    idAns=idAns+1;
    var historic = '['+answer+'] -> '+myQuestion;
    myHistoric = myHistoric.concat(historic);

    getClauses2(actualQuest, function(err, results){
      for (var i = 0; i < results.length; i++) {
        idClauses[i] = results[i].idClause;
        getDataClause(idClauses[i], function(err, results){
              var newClauses = {id:results[0].id,title: results[0].title}; /////
              myClauses = myClauses.concat(newClauses);     /////
        });        
      };
    });
    nextAns='nextyes';
    getQuestionAns(nextAns,actualQuest, function(err, results){
      //Poner pregunta formato adecuado
      nextQuest=results[0].nextyes;
      actualQuest=nextQuest;     
      nextQuest.toString();
      if(nextQuest!=''){
        getQuestion(actualQuest, function(err, results){
          myQuestion = results[0].text;
          getHelp(actualQuest, function(err, results){
            myHelp2 = results[0].help;
            var render={actualQuest:actualQuest,question:myQuestion,help:myHelp2,clauses:myClauses,historic:myHistoric};
            res.send(render);
          });
        });
      }else{
        getClauses2('Q11', function(err, results){
          for (var i = 0; i < results.length; i++) {
            idClauses[i] = results[i].idClause;
            getDataClause(idClauses[i], function(err, results){
              // newClauses = results[0].id+' '+results[0].title;
              // myClauses=myClauses.concat(newClauses); 
              var newClauses = {id:results[0].id,title: results[0].title};
              myClauses = myClauses.concat(newClauses);    
            });        
          };
        //console.log(myClauses);
        var render={clauses:myClauses,historic:myHistoric,message:'You have completed the evaluation'};
        res.send(render);
        });  
      }
    });  
   }  
});

router.post('/clausesFinal', function(req, res, next) {
  var idClauses1=req.body.arrayId;
  var idProject=req.body.idProject;
  //console.log(idClauses1);
  var idClauses2=idClauses1.split(',');
  //console.log(idClauses2);
  var idAns=1;
  for (var i = 0; i < idClauses2.length; i++) {
    insertClausesOfProject(idClauses2[i], idProject, idAns,function(err, results){});
  };
  res.send('OK');
});

router.get('/result', function(req, res, next) {
  if(typeof req.session.user == 'undefined'){
    res.redirect('/');
  }else{
    var hour = 3600000; //Una hora 3600000
    req.session.cookie.maxAge = hour;
    res.render('resultIctFeatures');
  }
});

router.post('/clauses', function(req, res, next) {
  var idProject=req.body.idProject;
  getClausesOfProject(idProject, function(err, results){
    res.send(results);
  });
});

router.get('/assingEvaluator', function(req, res, next) {
  res.render('assingEvaluator');
});

router.get('/allEvaluators', function(req, res, next) {
  getAllUsers(function(err, result){
    if (result.length == 0) {        
      res.send('ERROR');
    }else{
      console.log(result);
      res.send(result);
    }
  });
});


function dateFormat(date){
	var month=date.getMonth()+1;
	var result=date.getFullYear()+'-'+month+'-'+date.getDate()+' '+date.getHours()+':'+date.getMinutes()+':'+date.getSeconds();
	return result;
}

function Proyecto(id){
  this.id=id;
}

module.exports = router;
