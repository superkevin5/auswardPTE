/**
 * Created by kevinhu on 1/22/18.
 */
var readReorderParagraph = require('../model/readReorderParagraph');
var pteConstants = require('../utility/constant.js');

exports.getAllReadReorderParagraphIds = function (req, res) {

    req.models.readReorderParagraph.all(function (error, data) {

        if (error) {
            res.status(pteConstants.InternalServerError);
        }
        var ids = [];
        if (data) {
            for (var i = 0; i < data.length; i++) {
                ids.push(data[i].id);
            }
        }
        res.status(200).json(ids);
    });

};

exports.getReadingFillBlankById = function (req, res) {


    req.models.readReorderParagraph.get(req.params.id,function (error, data) {

        if (error) {
            res.status(pteConstants.InternalServerError);
        }


        req.models.readReorderParagraph.find({questionfk:req.params.id},function(err,result){


            
            res.status(200).json(data);
        });



    });

};