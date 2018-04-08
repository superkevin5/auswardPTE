/**
 * Created by kevinhu on 1/22/18.
 */
var listenFillBlank = require('../model/retellLecture');
var pteConstants = require('../utility/constant.js');

exports.getAllRetellLectureIds = function (req, res) {

    req.models.retelllecture.all(function (error, data) {
        if (error) {
            res.status(pteConstants.InternalServerError).send(error);
        } else{
            var ids = [];
            if (data) {
                for (var i = 0; i < data.length; i++) {
                    ids.push(data[i].id);
                }
            }
            res.status(200).json(ids);
        }
    });
};


exports.getRetellLectureById = function (req, res) {

    req.models.retelllecture.get(req.params.id, function (error, data) {
        if (error) {
            res.status(pteConstants.InternalServerError).send(error);
        } else{
            res.status(200).json(data);
        }
    });
};

