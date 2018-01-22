/**
 * Created by kevinhu on 1/22/18.
 */
var readAloud = require('../model/readAloud');
var pteConstants = require('../utility/constant.js');

exports.getAllReadAloud = function(req, res) {
    readAloud.select({}, null, function (hasError, data) {
        if (hasError) {
            res.status(pteConstants.InternalServerError).json(data);
            return;
        }
        res.status(pteConstants.ok).json(data);
    });
};

