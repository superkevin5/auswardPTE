module.exports = function (db) {

    return db.define("answershortquestion", {
        id: Number,
        audioPath: String,
        answer: String,
        description: String
    });
};
