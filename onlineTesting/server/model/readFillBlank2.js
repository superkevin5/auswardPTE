module.exports = function(db){

    return db.define("readfillblank2", {
        id: Number,
        description: String,
        options: String,
        answer: String
    });
};