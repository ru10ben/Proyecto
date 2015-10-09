var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var mysql = require('mysql');

var routes = require('./routes/index');
var users = require('./routes/users');
var session = require('express-session');

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

app.use(bodyParser());
app.use(session({secret:'mi secreto'}));

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
global.insertUser = function(id_user, first_name, last_name, user_name, password, email, roles, comments, callback) {
    connection.query("INSERT INTO user(id,firstName,lastName,userName,password,email,roles,comments) VALUES ("+id_user+",'"+first_name+"','"+last_name+"','"+user_name+"','"+password+"','"+email+"','"+roles+"','"+comments+"');",function(err, rows, fields) {
      callback(err, rows);
    });
};

//Get max(id)
global.maxIdUser = function(callback) {
    connection.query("SELECT max(id) FROM user", function(err, rows, fields) {
      callback(err, rows);
    });
};

//Get all users
global.getAllUsers = function(callback) {
    connection.query("SELECT firstName,lastName,userName FROM user", function(err, rows, fields) {
      callback(err, rows);
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
