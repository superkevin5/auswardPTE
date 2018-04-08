/**
 * Created by Luming on 1/17/2017.
 */

module.exports = Object.freeze({
    BadRequest: 400,
    Unauthorized: 401,
    Forbidden: 403,
    MethodNotAllowed: 405,
    NotAcceptable: 406,
    PreconditionFailed: 412,
    ExpectationFailed: 417,
    UnprocessableEntity: 422,
    FailedDependency: 424,
    InternalServerError:500,
    ok:200,
    dbOptions: {
        connectionLimit : 100, //important
        host     : 'localhost',
        port:'3306',
        databaseType:'mysql',
        user     : 'root',
        password : 'a',
        database : 'pteausward',
        debug    :  false
    },
    dbOptionsprd: {
        connectionLimit : 100, //important
        host     : 'pteausward.cwh50d7mpeqc.ap-southeast-2.rds.amazonaws.com',
        port:'3306',
        databaseType:'mysql',
        user     : 'ausward',
        password : 'kevinausward',
        database : 'pteausward',
        debug    :  false
    }
});

