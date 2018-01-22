var mysqlDB = require('../utility/db');

var readAloud = function (id, description, recordingDuration, audioPath) {
    this.id = id;
    this.description = description;
    this.recordingDuration = recordingDuration;
    this.audioPath = audioPath;
};

readAloud.select= function (criteria, range, callback) {
    mysqlDB.selectRecord('readAloud', criteria, range, callback);
};

module.exports = readAloud;