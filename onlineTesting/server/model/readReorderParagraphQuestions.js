module.exports = function(db){

    return db.define("readReorderParagraphQuestions", {
        id      : Number,
        description   : String,
        questionfk: Number
    });
};