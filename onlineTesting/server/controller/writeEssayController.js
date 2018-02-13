/**
 * Created by kevinhu on 1/22/18.
 */
var writeEssay = require('../model/writeEssay');
var pteConstants = require('../utility/constant.js');

exports.getAllWriteEssayIds = function (req, res) {

    req.models.writeEssay.all(function (error, data) {
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




exports.getWriteEssayById = function (req, res) {


    req.models.writeEssay.get(req.params.id,function (error, data) {
        if (error) {
            res.status(pteConstants.InternalServerError);
        }

        res.status(200).json(data);
    });

};


