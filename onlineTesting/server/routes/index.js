var express = require('express');
var router = express.Router();

var readAloud_controller = require('../controller/readAloudController');

var readFillBlank_controller = require('../controller/readFillBlankController');

router.get('/', function(req, res, next) {
	res.send('Hello testing');
});

router.get('/pteausward/getAllReadAloud', readAloud_controller.getAllReadAloud);


router.get('/pteausward/getAllReadingFillBlankIds', readFillBlank_controller.getAllReadingFillBlankIds);


router.get('/pteausward/getReadingFillById/:id', readFillBlank_controller.getReadingFillBlankById);

module.exports = router;
