module.exports = function (db) {

    return db.define("describeImage", {
        id: Number,
        imagePath: String,
        audioPath: String,
        descriptionPath: String
    });
};