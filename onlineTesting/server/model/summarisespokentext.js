module.exports = function (db) {

    return db.define("summariseSpokenText", {
        id: Number,
        audioPath: String,
        description: String
    });
};
