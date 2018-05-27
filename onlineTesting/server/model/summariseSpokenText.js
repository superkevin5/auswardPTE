module.exports = function (db) {

    return db.define("summarisespokentext", {
        id: Number,
        audioPath: String,
        descriptionPath: String,
        notePath: String
    });
};
