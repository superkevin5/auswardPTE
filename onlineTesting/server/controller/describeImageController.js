/**
 * Created by kevinhu on 1/22/18.
 */
var describeImage = require('../model/describeImage');
var pteConstants = require('../utility/constant.js');

exports.getAllDescribeImage = function(req, res) {

    req.models.describeImage.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError);
        }
        res.status(200).json(data);
    });

};


