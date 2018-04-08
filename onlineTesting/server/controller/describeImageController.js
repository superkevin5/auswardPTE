/**
 * Created by kevinhu on 1/22/18.
 */
var describeImage = require('../model/describeImage');
var pteConstants = require('../utility/constant.js');

exports.getAllDescribeImage = function(req, res) {

    req.models.describeimage.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError).send(error);
        }else{
            res.status(200).json(data);
        }
    });

};


