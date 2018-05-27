module.exports = function (db) {

    return db.define("retelllecture", {
        id: Number,
        audioPath: String,
        imagePath: String,
        descriptionPath: String,
        notePath: String
    });
};