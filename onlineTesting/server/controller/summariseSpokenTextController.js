/**
 * Created by kevinhu on 1/3/18.
 */
var summariseSpokenText = require('../model/summariseSpokenText');
var pteConstants = require('../utility/constant.js');

exports.getAllSummariseSpokenTextIds = function (req, res) {


    req.models.summarisespokentext.all(function (error, data) {
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


exports.getSummariseSpokenTextById = function (req, res) {


    req.models.summarisespokentext.get(req.params.id,function (error, data) {
        if (error) {
            res.status(pteConstants.InternalServerError).send(error);
        } else{
            res.status(200).json(data);
        }
    });

};
