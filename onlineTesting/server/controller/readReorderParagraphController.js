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

exports.getReadReorderParagraphById = function (req, res) {

    req.models.readReorderParagraph.get(req.params.id, function (error, data) {

        if (error) {
            res.status(pteConstants.InternalServerError);
        }
        var response = {};
        response.questionTitle = data;

        req.models.readReorderParagraphQuestions.find({questionfk: req.params.id}, function (err, result) {

            if (err) {
                res.status(pteConstants.InternalServerError);
            }
            response.question = result;
            res.status(200).json(response);
        });

    });

};