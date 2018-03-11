module.exports = function (db) {

    return db.define("writeFromDictation", {
        id: Number,
        audioPath: String,
        answer: String
    });
};
