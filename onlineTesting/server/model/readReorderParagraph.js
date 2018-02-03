module.exports = function(db){

    return db.define("readReorderParagraph", {
        id      : Number,
        answer   : String
    });
};