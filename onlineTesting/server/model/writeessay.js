module.exports = function (db) {

    return db.define("writeessay", {
        id: Number,
        description: String
    });
};