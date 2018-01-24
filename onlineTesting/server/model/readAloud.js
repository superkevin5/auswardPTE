module.exports = function(db){

    return db.define("readAloud", {
        id      : Number,
        description   : String,
        audioPath       : String,
        recordingDuration      : Number
    });
}