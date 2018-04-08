module.exports = function (db) {

    return db.define("repeatsentence", {
        id: Number,
        description: String,
        audioPath: String
    });
};