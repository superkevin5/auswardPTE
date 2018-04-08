module.exports = function(db){

    return db.define("readreorderparagraphquestions", {
        id      : Number,
        description   : String,
        questionfk: Number
    });
};