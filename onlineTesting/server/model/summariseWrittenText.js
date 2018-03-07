module.exports = function (db) {

    return db.define("summariseWrittenText", {
        id: Number,
        description: String,
        answer: String
    });
};
