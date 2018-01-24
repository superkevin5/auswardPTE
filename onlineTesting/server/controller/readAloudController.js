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
    //     res.status(pteConstants.InternalServerError).json(data);
    //     return;
    // }

    req.models.readAloud.find({id:1},function(error,data){

        console.log(data);
        res.status(200).json(data);
    });

};

