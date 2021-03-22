const DB = require('../database/db.js').execute();

module.exports = {
    name: 'add-insult',
    description: 'Adds insult to the collection!',
    execute(message, args) {
        let msg = args.join(' ');
        if(!msg || msg.length == 0) return;

        const text = 'INSERT INTO Insults(server_id, insult, uploaded_by) VALUES($1, $2, $3)';
        const values = [message.guild.id, msg, message.author.id];

        DB.query(text, values, (err, res) => {
            if (err) {
                console.log(err.stack)
            } else {
                // console.log(res.rows)
            }
        });


        message.channel.send(`Your insult: \`${msg}\` has been added!`);
        // message.channel.send(`Your insult: <@${message.author.id}> has been added!`);
        // message.channel.send(`Your insult: ${message.guild.id} has been added!`);
        // console.log(message.author.id)
    },
};