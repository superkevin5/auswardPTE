module.exports = function (db) {

    return db.define("writefromdictation", {
        id: Number,
        audioPath: String,
        answer: String
    });
};
