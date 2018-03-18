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
var readAloud = require('./model/readAloud');
var readFillBlank = require('./model/readFillBlank');
var readReorderParagraph = require('./model/readReorderParagraph');
var readReorderParagraphQuestions = require('./model/readReorderParagraphQuestions');
var listenFillBlank = require('./model/listenFillBlank');
var writeEssay = require('./model/writeEssay');
var summariseWrittenText= require('./model/summariseWrittenText');

var repeatSentence = require('./model/repeatSentence');
var retellLecture = require('./model/retellLecture');
var answerShortQuestion = require('./model/answerShortQuestion');
var describeImage = require('./model/describeImage');
var highLightIncorrectWords = require('./model/highLightIncorrectWords');
var writeFromDictation = require('./model/writeFromDictation');

var summariseSpokenText = require('./model/summariseSpokenText');


//init app
var app = express();


// Logger
log4js.loadAppender('file');
log4js.addAppender(log4js.appenders.file(path.join(__dirname, 'access.log')), 'pteausward');
var accessLogStream = fs.createWriteStream(path.join(__dirname, 'access.log'), {flags: 'a'});
app.use(morgan('combined', {stream: accessLogStream}));
var logStdout = process.stdout;

var limiter = new RateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 500, // limit each IP to 100 requests per windowMs
    delayMs: 0, // disable delaying - full speed until the max limit is reached,
    message: 'too many requests, you are blocked!!'
});


app.use(passport.initialize());
app.use(passport.session());

// Body Parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());

app.use(function (req, res, next) {

    if( req.headers.origin == 'http://localhost:4200' || req.headers.origin == 'http://127.0.0.1:4200' ){
        res.header("Access-Control-Allow-Origin", req.headers.origin);
        res.header("Access-Control-Allow-Methods", "PUT, GET, POST, DELETE, OPTIONS");
        res.header('Access-Control-Allow-Headers', 'X-Requested-With');
        res.header('Access-Control-Allow-Headers', 'Content-Type');
        res.header("Access-Control-Allow-Credentials", "true");
    } else {
        res.header("Access-Control-Allow-Origin", req.headers.origin);
        res.header("Access-Control-Allow-Methods", "PUT, GET, POST, DELETE, OPTIONS");
        res.header('Access-Control-Allow-Headers', 'X-Requested-With');
        res.header('Access-Control-Allow-Headers', 'Content-Type');
        res.header("Access-Control-Allow-Credentials", "true");
    }
    next();
});

//flash
app.use(flash());


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
    app.use(function (err, req, res, next) {
        res.status(err.status || 500);
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}
// production error handler
// no stacktraces leaked to user
app.use(function (err, req, res, next) {
    res.status(err.status || 500);
    res.json({
        message: err.message,
        error: {}
    });
});


app.use(orm.express("mysql://" + pteContants.dbOptions.user + ":" + pteContants.dbOptions.password + "@" + pteContants.dbOptions.host + "/" + pteContants.dbOptions.database, {
    define: function (db, models, next) {
        db.settings.set('instance.identityCache', true);
        db.settings.set('connection.pool', true);
        db.settings.set('connection.reconnect', true);
        models.readAloud = readAloud(db);
        models.readFillBlank = readFillBlank(db);

        models.readReorderParagraph = readReorderParagraph(db);
        models.readReorderParagraphQuestions = readReorderParagraphQuestions(db);
        models.listenFillBlank = listenFillBlank(db);
        models.writeEssay = writeEssay(db);

        models.repeatSentence = repeatSentence(db);
        models.retellLecture = retellLecture(db);
        models.answerShortQuestion = answerShortQuestion(db);
        models.describeImage = describeImage(db);
        models.highLightIncorrectWords = highLightIncorrectWords(db);
        models.summariseWrittenText = summariseWrittenText(db);
        models.writeFromDictation = writeFromDictation(db);
        models.summariseSpokenText = summariseSpokenText(db);

        // models.readReorderParagraph.hasMany("questions", models.readReorderParagraphQuestions, {}, {
        //     autoFetch: true
        // });
        //
        // models.readReorderParagraphQuestions.hasOne("questions1", models.readReorderParagraph, {}, {
        //     autoFetch: true
        // });


        next();
    }
}));


// Routes
app.use('/', routes);

//serve static file
app.use('/public', express.static('public'));

app.set('port', (process.env.PORT || 3002));


module.exports = app;
