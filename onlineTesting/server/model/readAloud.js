module.exports = function(db){

    return db.define("readAloud", {
        id      : Number,
        description   : String,
        audioPathMale       : String,
        audioPathFemale       : String,
        recordingDuration      : Number
    });
};