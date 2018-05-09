var express = require('express');
var router = express.Router();

var readAloud_controller = require('../controller/readAloudController');

var readFillBlank_controller = require('../controller/readFillBlankController');
var readFillBlank_controller2 = require('../controller/readFillBlankController2');

var readReorderParagraph_controller = require('../controller/readReorderParagraphController');

var listenFillBlank_controller = require('../controller/listenFillBlankController');

var writeEssay_controller = require('../controller/writeEssayController');

var summariseWrittenText_controller = require('../controller/summariseWrittenTextController');

var retellLecture_controller = require('../controller/retellLectureController');

var repeatSentence_controller = require('../controller/repeatSentenceController');
var answerShortQuestion_controller = require('../controller/answerShortQuestionController');
var describeImage_controller = require('../controller/describeImageController');
var hightLightIncorrect_controller = require('../controller/highLightIncorrectWordsController');

var writeFromDictation_controller = require('../controller/writeFromDictationController');

var summariseSpokenText_controller = require('../controller/summariseSpokenTextController');

router.get('/', function(req, res, next) {
	res.send('Hello testing');
});

router.get('/pteausward/getAllReadAloud', readAloud_controller.getAllReadAloud);

router.get('/pteausward/getAllReadingFillBlankIds', readFillBlank_controller.getAllReadingFillBlankIds);

router.get('/pteausward/getReadingFillById/:id', readFillBlank_controller.getReadingFillBlankById);

router.get('/pteausward/getAllReadingFillBlank2Ids', readFillBlank_controller2.getAllReadingFillBlank2Ids);

router.get('/pteausward/getReadingFill2ById/:id', readFillBlank_controller2.getReadingFillBlank2ById);


router.get('/pteausward/getAllReadReorderParagraphIds', readReorderParagraph_controller.getAllReadReorderParagraphIds);

router.get('/pteausward/getReadReorderParagraphById/:id', readReorderParagraph_controller.getReadReorderParagraphById);

router.get('/pteausward/getAllListenFillBlankIds', listenFillBlank_controller.getAllListenFillBlankIds);

router.get('/pteausward/getListenFillBlankById/:id', listenFillBlank_controller.getListenFillBlankById);

router.get('/pteausward/getAllWriteEssayIds', writeEssay_controller.getAllWriteEssayIds);

router.get('/pteausward/getAllWriteEssayById/:id', writeEssay_controller.getWriteEssayById);

router.get('/pteausward/getAllRepeatSentence', repeatSentence_controller.getAllRepeatSentence);

router.get('/pteausward/getAllRetellLectureIds', retellLecture_controller.getAllRetellLectureIds);

router.get('/pteausward/getRetellLectureById/:id', retellLecture_controller.getRetellLectureById);

router.get('/pteausward/getAllShortQuestions', answerShortQuestion_controller.getAllShortQuestions);

router.get('/pteausward/getAllWriteFromDictations', writeFromDictation_controller.getAllWriteFromDictations);


router.get('/pteausward/getAllDescribeImages', describeImage_controller.getAllDescribeImage);

router.get('/pteausward/getAllHighLightIncorrectWordsIds', hightLightIncorrect_controller.getAllHighLightIncorrectWordsIds);

router.get('/pteausward/getHighLightIncorrectWordsById/:id', hightLightIncorrect_controller.getHighLightIncorrectWordsById);

router.get('/pteausward/getAllSummariseWrittenTextIds', summariseWrittenText_controller.getAllSummariseWrittenTextIds);

router.get('/pteausward/getAllSummariseWrittenTextById/:id', summariseWrittenText_controller.getAllSummariseWrittenTextById);

router.get('/pteausward/getAllSummariseSpokenTextIds', summariseSpokenText_controller.getAllSummariseSpokenTextIds);

router.get('/pteausward/getSummariseSpokenTextById/:id', summariseSpokenText_controller.getSummariseSpokenTextById);

module.exports = router;
