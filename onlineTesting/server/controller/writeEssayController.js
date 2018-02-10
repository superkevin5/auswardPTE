/**
 * Created by kevinhu on 1/22/18.
 */
var writeEssay = require('../model/writeEssay');
var pteConstants = require('../utility/constant.js');

exports.getAllWriteEssay = function (req, res) {

    req.models.writeEssay.all(function (error, data) {
        if (error) {
            res.status(pteConstants.InternalServerError);
        }
        res.status(200).json(data);
    });

};


