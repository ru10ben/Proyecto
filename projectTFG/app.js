var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var ipfilter = require('ipfilter');
var mysql = require('mysql');

var routes = require('./routes/index');
var users = require('./routes/users');

//var session = require('express-session');

var app = express();

// view engine setup
//app.set('/', path.join(__dirname, '/'));
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');
app.set('views', __dirname + '/');
//app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use('/' ,express.static(path.join(__dirname, '/')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', routes);
app.use('/users', users);

//filtro de ips
// var ips = ['0.0.0.0']; //ips aceptadas
// app.use(ipfilter(ips, {mode: 'allow'}));

// DATABASE
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    port     : 3306,
    database : 'myapp',
});

//Get user by username
global.getUser = function(name_user, callback) {
    connection.query("SELECT * FROM user WHERE userName='"+ name_user +"';", function(err, rows, fields) {
        callback(err, rows);
    });
};
//Insert a user
global.insertUser = function(first_name, last_name, user_name, password, email, roles, comments, callback) {
    connection.query("INSERT INTO user(firstName,lastName,userName,password,email,roles,comments) VALUES ('"+first_name+"','"+last_name+"','"+user_name+"','"+password+"','"+email+"','"+roles+"','"+comments+"');",function(err, rows, fields) {
      callback(err, rows);
    });
};
//Get max(id)
/*global.maxIdUser = function(callback) {
    connection.query("SELECT max(id) num FROM user", function(err, rows, fields) {
      callback(err, rows);
    });
};*/
//Get all users
global.getAllUsers = function(callback) {
    connection.query("SELECT * FROM user", function(err, rows, fields) {
      callback(err, rows);
    });
};

global.insertSession = function(id_session,idUser, user_name, path, expires, originalMaxAge, callback) {
    connection.query("INSERT INTO session(id,idUser,userName,path,expires,originalMaxAge) VALUES ('"+id_session+"','"+idUser+"','"+user_name+"','"+path+"','"+expires+"','"+originalMaxAge+"');",function(err, rows, fields) {
      callback(err, rows);
    });
};

global.getSession = function(name_user, callback) {
    connection.query("SELECT * FROM session WHERE userName='"+name_user+"';", function(err, rows, fields) {
        callback(err, rows);
    });
};

global.updateSession = function(id_session, name_user, path, expires, originalMaxAge, callback) {
    connection.query("UPDATE session SET id='"+id_session+"',path='"+path+"',expires='"+expires+"' WHERE userName='"+name_user+"';", function(err, rows, fields) {
        callback(err, rows);
    });
};

/*global.insertPath = function(name_user, path, callback) {
    connection.query("UPDATE session SET path='"+path+"' WHERE userName='"+name_user+"';", function(err, rows, fields) {
        callback(err, rows);
    });
};*/
//This function inserts a project
global.insertProject = function(idUser, name, description,callback) {
    connection.query("INSERT INTO project(idUser,name,description) VALUES('"+idUser+"','"+name+"','"+description+"');",function(err,results,fields){
        callback(err, results);
    });
};
//This function gets the text of a question
global.getQuestion = function(actualQuest, callback) {
    connection.query('SELECT text FROM question WHERE id='+'"'+actualQuest+'"',function(err,results,fields){ 
        callback(err, results);
    });
};
//This function gets the help of a question
global.getHelp = function(actualQuest, callback) {
    connection.query('SELECT help FROM question WHERE id='+'"'+actualQuest+'"',function(err,results,fields){
        callback(err, results);
    });
};
//This function gets the id and the title of the clauses always apply
global.getInitialClauses = function(callback) {
    connection.query('SELECT id, title FROM clause WHERE id="05.2" or id="05.3" or id="05.4" or id="05.7" or id="05.8" or id="05.9"',function(err,results,fields){
      callback(err, results);
    });
};
//This function inserts the answer to a question
global.insertAnswers = function(idQuest, idProj, answer,callback) {
  connection.query("INSERT INTO answer(idQuest,idProj,answer) VALUES('"+idQuest+"','"+idProj+"','"+answer+"')",function(err,results,fields){
        callback(err, results);
    });
};
//This function gets the id of the next question according to the answer to the current question 
global.getQuestionAns = function(nextAns,actualQuest, callback) {
    connection.query('SELECT '+nextAns+' FROM question WHERE id='+'"'+actualQuest+'"',function(err,results,fields){ 
        callback(err, results);
    });
};

global.getClausesFromQuestion = function(actualQuest,callback) {
    connection.query('SELECT idClause FROM clausesofquestion WHERE idQuest='+'"'+actualQuest+'"',function(err,results,fields){
      callback(err, results);
    });
};

global.getClauseData = function(idClause, callback) {
    connection.query('SELECT id, title,text FROM clause WHERE id='+'"'+idClause+'"',function(err,results,fields){
      callback(err, results);
    });
};

global.maxIdProject = function(callback) {
    connection.query("SELECT max(id) num FROM project", function(err, rows, fields) {
      callback(err, rows);
    });
};
//This function inserts the clauses of a project
global.insertClausesOfProject = function(idClause, idProj, idAnswer,callback) {
  connection.query("INSERT INTO clausesofproject(idClause,idProj,idAnswer) VALUES('"+idClause+"','"+idProj+"','"+idAnswer+"')",function(err,results,fields){
        callback(err, results);
  });
};
//SELECT clause.id, clause.title FROM clause INNER JOIN clausesofproject ON clause.id=clausesofproject.idClause WHERE idProj='1'
global.getClausesOfProject = function(id, callback) {
    connection.query('SELECT clause.id, clause.title FROM clause INNER JOIN clausesofproject ON clause.id=clausesofproject.idClause WHERE idProj='+'"'+id+'" ORDER BY clause.id ASC',function(err, rows, fields) {
      callback(err, rows);
    });
};
//SELECT clause.id, clause.title,evaluation.answer FROM clause, evaluation INNER JOIN evaluation ON clause.id=evaluation.idClause WHERE idProj=1 ORDER BY clause.id ASC
global.getClausesOfProjectFromEvaluation = function(id, callback) {
    connection.query('SELECT clause.id, clause.title,clause.text,evaluation.answer FROM clause INNER JOIN evaluation ON clause.id=evaluation.idClause WHERE idProj='+'"'+id+'" ORDER BY clause.id ASC',function(err, rows, fields) {
      callback(err, rows);
    });
};

global.insertEvaluatorOfProject = function(idUser, idProj, situation,callback) {
    connection.query("INSERT INTO evaluatorofproject(idUser,idProj,situation) VALUES ('"+idUser+"','"+idProj+"','"+situation+"');",function(err, rows, fields) {
      callback(err, rows);
    });
};
//SELECT project.id, project.name, project.description FROM project INNER JOIN evaluatorofproject ON project.id=evaluatorofproject.idProj WHERE evaluatorofproject.idUser=5
global.getEvaluatorProjects = function(idUser, callback) {
    connection.query('SELECT project.id, project.name, project.description FROM project INNER JOIN evaluatorofproject ON project.id=evaluatorofproject.idProj WHERE evaluatorofproject.idUser='+'"'+idUser+'"', function(err, rows, fields) {
      callback(err, rows);
    });
};
//INSERT INTO tablaDestino SELECT * FROM tablaOrigen
global.insertForEvaluation = function(id, callback) {
    connection.query('INSERT INTO evaluation(idClause,idProj) SELECT idClause,idProj FROM clausesofproject WHERE idProj='+'"'+id+'"',function(err,results,fields){
      callback(err, results);
    });
};

global.getAnswerEvaluation = function(id, answer,should, callback) {
    connection.query('SELECT count(answer) num FROM evaluation INNER JOIN clause ON clause.id=evaluation.idClause WHERE evaluation.answer='+'"'+answer+'" AND evaluation.idProj='+'"'+id+'" AND clause.should='+'"'+should+'"',function(err, rows, fields) {
      callback(err, rows);
    });
};

global.getTotalRQ = function(id, should, callback) {
    connection.query('SELECT count(answer) num FROM evaluation INNER JOIN clause ON clause.id=evaluation.idClause WHERE evaluation.idProj='+'"'+id+'" AND clause.should='+'"'+should+'"',function(err, rows, fields) {
      callback(err, rows);
    });
};

global.getTotalSH = function(id, should, callback) {
    connection.query('SELECT count(answer) num FROM evaluation INNER JOIN clause ON clause.id=evaluation.idClause WHERE evaluation.idProj='+'"'+id+'" AND clause.should='+'"'+should+'"',function(err, rows, fields) {
      callback(err, rows);
    });
};
/////////////////////////////
global.getComplianceOfClause = function(idClause, callback) {
    connection.query('SELECT `typeOfAssessment`, `preconditions`, `procedure`, `result` FROM `compliance` WHERE idClause='+'"'+idClause+'"',function(err, rows, fields) {
      callback(err, rows);
    });
};

global.getNoteOfClause = function(idClause, callback) {
    connection.query('SELECT * FROM noteofclause WHERE noteofclause.idClause='+'"'+idClause+'"',function(err, rows, fields) {
      callback(err, rows);
    });
};

global.insertEvaluation = function(idProj,idClause, answer, callback) {
    connection.query('UPDATE evaluation SET answer='+'"'+answer+'" WHERE idProj='+'"'+idProj+'" AND idClause='+'"'+idClause+'"',function(err,results,fields){
      callback(err, results);
    });
};

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});

app.listen(8000);
module.exports = app;
