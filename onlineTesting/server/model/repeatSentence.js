module.exports = function (db) {

    return db.define("repeatSentence", {
        id: Number,
        description: String,
        audioPath: String
    });
};