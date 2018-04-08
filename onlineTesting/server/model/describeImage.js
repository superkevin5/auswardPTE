module.exports = function (db) {

    return db.define("describeimage", {
        id: Number,
        imagePath: String,
        audioPath: String,
        descriptionPath: String
    });
};