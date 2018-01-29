/**
 * Created by kevinhu on 1/22/18.
 */
var readAloud = require('../model/readAloud');
var pteConstants = require('../utility/constant.js');

exports.getAllReadAloud = function(req, res) {
    // readAloud.select({}, null, function (hasError, data) {
    //
    // });

    // if (hasError) {
    //
    // }

    req.models.readAloud.all(function(error,data){

        if(error){
            res.status(pteConstants.InternalServerError);
        }
        res.status(200).json(data);
    });

};

