module.exports = function(db){

    return db.define("readfillblank", {
        id: Number,
        description: String,
        options: String,
        answer: String,
        type: Number
    });
};