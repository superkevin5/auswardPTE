var express = require('express');
var router = express.Router();

var readAloud_controller = require('../controller/readAloudController');

var readFillBlank_controller = require('../controller/readFillBlankController');

var readReorderParagraph_controller = require('../controller/readReorderParagraphController');

var listenFillBlank_controller = require('../controller/listenFillBlankController');

var writeEssay_controller = require('../controller/writeEssayController');


router.get('/', function(req, res, next) {
	res.send('Hello testing');
});

router.get('/pteausward/getAllReadAloud', readAloud_controller.getAllReadAloud);

router.get('/pteausward/getAllReadingFillBlankIds', readFillBlank_controller.getAllReadingFillBlankIds);

router.get('/pteausward/getReadingFillById/:id', readFillBlank_controller.getReadingFillBlankById);

router.get('/pteausward/getAllReadReorderParagraphIds', readReorderParagraph_controller.getAllReadReorderParagraphIds);

router.get('/pteausward/getReadReorderParagraphById/:id', readReorderParagraph_controller.getReadReorderParagraphById);

router.get('/pteausward/getAllListenFillBlankIds', listenFillBlank_controller.getAllListenFillBlankIds);

router.get('/pteausward/getListenFillBlankById/:id', listenFillBlank_controller.getListenFillBlankById);

router.get('/pteausward/getAllWriteEssay', writeEssay_controller.getAllWriteEssay);


module.exports = router;
