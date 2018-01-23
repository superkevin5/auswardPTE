var express = require('express');
var path = require('path');
var morgan = require('morgan');
var log4js = require("log4js");
var fs = require('fs');
var util = require('util');
var cookieParser = require('cookie-parser');
var RateLimit = require('express-rate-limit');
var bodyParser = require('body-parser');
var session = require('express-session');
var expressValidator = require('express-validator');
var pteausward = log4js.getLogger('pteausward');
var passport = require('passport');
var flash = require('connect-flash');
var pteContants = require('./utility/constant.js');
var orm = require("orm");
// Route Files
var routes = require('./routes/index');

//init app
var app = express();


// Logger
log4js.loadAppender('file');
log4js.addAppender(log4js.appenders.file(path.join(__dirname, 'access.log')), 'pteausward');
var accessLogStream = fs.createWriteStream(path.join(__dirname, 'access.log'), {flags: 'a'});
app.use(morgan('combined', {stream: accessLogStream}));
var logStdout = process.stdout;

var limiter = new RateLimit({
    windowMs: 15*60*1000, // 15 minutes
    max: 100, // limit each IP to 100 requests per windowMs
    delayMs: 0, // disable delaying - full speed until the max limit is reached,
    message:'too many requests, you are blocked!!'
});


app.use(passport.initialize());
app.use(passport.session());

// Body Parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "http://localhost:4200");
    res.header("Access-Control-Allow-Credentials", "true");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Headers", "Content-Type");
    res.header("Access-Control-Allow-Methods", "PUT, GET, POST, DELETE, OPTIONS");
    next();
});

//flash
app.use(flash());

// app.use('/dish', express.static('dish'));

//  rate limite apply to all requests
app.use(limiter);

// Validator
app.use(expressValidator({
    errorFormatter: function (param, msg, value) {
        var namespace = param.split('.')
            , root = namespace.shift()
            , formParam = root;

        while (namespace.length) {
            formParam += '[' + namespace.shift() + ']';
        }
        return {
            param: formParam,
            msg: msg,
            value: value
        };
    }
}));


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
    res.json({
        message: err.message,
        error: {}
    });
});


app.use(orm.express("mysql://root:a@localhost/pteausward", {
    define: function (db, models,next) {

        models.readAloud = db.define("readAloud", {
            id      : Number,
            description   : String,
            audioPath       : String,
            recordingDuration      : Number
        });
        next();
    }
}));


// Routes
app.use('/', routes);

app.set('port', (process.env.PORT || 3002));


module.exports = app;