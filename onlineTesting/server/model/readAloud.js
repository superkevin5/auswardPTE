module.exports = function(db){

    return db.define("readaloud", {
        id      : Number,
        description   : String,
        audioPathMale       : String,
        audioPathFemale       : String,
        recordingDuration      : Number
    });
};