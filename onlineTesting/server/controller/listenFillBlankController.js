/**
 * Created by kevinhu on 1/22/18.
 */
var listenFillBlank = require('../model/listenFillBlank');
var pteConstants = require('../utility/constant.js');

exports.getAllListenFillBlankIds = function (req, res) {


    req.models.listenFillBlank.all(function (error, data) {
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


exports.getListenFillBlankById = function (req, res) {


    req.models.listenFillBlank.get(req.params.id,function (error, data) {
        if (error) {
            res.status(pteConstants.InternalServerError);
        }

        res.status(200).json(data);
    });

};

