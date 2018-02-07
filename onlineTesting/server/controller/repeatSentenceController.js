/**
 * Created by kevinhu on 1/22/18.
 */
var repeatSentence = require('../model/repeatSentence');
var pteConstants = require('../utility/constant.js');


exports.getAllRepeatSentence = function(req, res) {

    req.models.repeatSentence.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError);
        }
        res.status(200).json(data);
    });

};
