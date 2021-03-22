const { Client } = require('pg');
const { dbUser, dbHost, dbName, dbPass, dbPort } = require('../config.json');

let db = undefined;
module.exports = {
    execute() {
        if (db) {
            return db;
        }
        else {
            const client = new Client({
                user: dbUser,
                host: dbHost,
                database: dbName,
                password: dbPass,
                port: dbPort,
            });

            client.connect();
            db = client;
        }

       return db;
    }
}