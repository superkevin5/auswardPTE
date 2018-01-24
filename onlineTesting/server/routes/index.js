var express = require('express');
var router = express.Router();

var readAloud_controller = require('../controller/readAloudController');

router.get('/', function(req, res, next) {
	res.send('Hello testing');
});

router.get('/pteausward/getAllReadAloud', readAloud_controller.getAllReadAloud);


module.exports = router;
