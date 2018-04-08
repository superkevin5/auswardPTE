module.exports = function(db){

    return db.define("readfillblank", {
        id      : Number,
        description   : String,
        answer       : String
    });
};