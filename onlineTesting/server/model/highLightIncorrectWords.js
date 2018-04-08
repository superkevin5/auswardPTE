module.exports = function (db) {

    return db.define("highlightincorrectwords", {
        id: Number,
        description: String,
        audioPath: String,
        answer: String
    });
};
