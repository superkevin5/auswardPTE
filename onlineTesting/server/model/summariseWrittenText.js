module.exports = function (db) {

    return db.define("summarisewrittentext", {
        id: Number,
        description: String,
        answer: String
    });
};
