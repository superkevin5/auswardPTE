module.exports = function(db){

    return db.define("readReorderParagraphQuestions", {
        id      : Number,
        answer   : String,
        questionfk: Number
    });
};