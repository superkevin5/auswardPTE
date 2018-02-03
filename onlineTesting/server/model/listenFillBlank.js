module.exports = function (db) {

    return db.define("listenFillBlank", {
        id: Number,
        description: String,
        answer: String,
        audioPath: String
    });
};