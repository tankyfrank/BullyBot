// const { Client } = require('pg');
// const { dbUser, dbHost, dbName, dbPass, dbPort } = require('../config.json');
// const { insult } = require('../insult.json');

// const client = new Client({
//     user: dbUser,
//     host: dbHost,
//     database: dbName,
//     password: dbPass,
//     port: dbPort,
// });

// client.connect();



// client.query('SELECT NOW()', (err, res) => {
//     console.log(err, res);
//     client.end();
// });


// const text = 'INSERT INTO test(name, age, comments) VALUES($1, $2, $3)';
// const values = ['Bill', 45, 'Some kind of comments'];


// const text = 'SELECT * FROM test';

// const text = 'INSERT INTO Insults(server_id, insult, uploaded_by) VALUES($1, $2, $3)';
// insult.forEach(el => {
//     const values = ['362760187775287308', el, ''];
//     client.query(text, values, (err, res) => {
//         if (err) {
//             console.log(err.stack)
//         } else {
//             // console.log(res.rows)
//         }
//     });
// })





// client
//   .query(text, values)
//   .then(res => {
//     console.log(res.rows)
//     // { name: 'brianc', email: 'brian.m.carlson@gmail.com' }
//   })
//   .catch(e => console.error(e.stack))