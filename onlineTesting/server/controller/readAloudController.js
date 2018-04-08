/**
 * Created by kevinhu on 1/22/18.
 */
var readAloud = require('../model/readAloud');
var pteConstants = require('../utility/constant.js');

exports.getAllReadAloud = function(req, res) {

    req.models.readaloud.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError).send(error);
        } else{
            res.status(200).json(data);
        }
    });

};

