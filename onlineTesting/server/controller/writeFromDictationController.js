/**
 * Created by kevinhu on 1/3/18.
 */
var writeFromDictation = require('../model/writeFromDictation');
var pteConstants = require('../utility/constant.js');

exports.getAllWriteFromDictations = function(req, res) {

    req.models.writeFromDictation.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError);
        }
        res.status(200).json(data);
    });

};

