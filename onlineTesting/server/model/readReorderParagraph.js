module.exports = function(db){

    return db.define("readreorderparagraph", {
        id      : Number,
        answer   : String
    });
};