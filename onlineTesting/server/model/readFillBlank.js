module.exports = function(db){

    return db.define("readFillBlank", {
        id      : Number,
        description   : String,
        answer       : String
    });
};