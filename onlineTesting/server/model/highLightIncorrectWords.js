module.exports = function (db) {

    return db.define("highLightIncorrectWords", {
        id: Number,
        description: String,
        audioPath: String,
        answer: String
    });
};
