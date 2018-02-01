/**
 * Created by kevinhu on 1/22/18.
 */
var readReorderParagraph = require('../model/readReorderParagraph');
var pteConstants = require('../utility/constant.js');

exports.getAllReadReorderParagraphIds = function(req, res) {

    req.models.readReorderParagraph.all(function(error,data){

        if (error) {
            res.status(pteConstants.InternalServerError);
        }

        return res.status(200).json(data);
    });

};

