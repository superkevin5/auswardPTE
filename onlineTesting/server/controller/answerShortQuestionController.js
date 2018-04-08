/**
 * Created by kevinhu on 1/3/18.
 */
var answerShortQuestion = require('../model/answerShortQuestion');
var pteConstants = require('../utility/constant.js');

exports.getAllShortQuestions = function(req, res) {

    req.models.answershortquestion.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError).send(error);
        }else{
            res.status(200).json(data);
        }
    });

};

