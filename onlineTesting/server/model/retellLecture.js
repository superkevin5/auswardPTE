module.exports = function (db) {

    return db.define("retellLecture", {
        id: Number,
        audioPath: String,
        imagePath: String,
        descriptionPath: String
    });
};