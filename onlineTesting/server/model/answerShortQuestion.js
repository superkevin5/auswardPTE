module.exports = function(db){

    return db.define("answerShortQuestion", {
        id      : Number,
        audioPath   : String,
        answer       : String
    });
};