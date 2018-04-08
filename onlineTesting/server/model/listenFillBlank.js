module.exports = function (db) {

    return db.define("listenfillblank", {
        id: Number,
        description: String,
        answer: String,
        audioPath: String
    });
};