module.exports = function (db) {

    return db.define("writeEssay", {
        id: Number,
        description: String
    });
};