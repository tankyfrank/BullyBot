const { insult } = require('../insult.json');
const DB = require('../database/db.js').execute();

function random_item(items) {

    return items[Math.floor(Math.random() * items.length)];
}

module.exports = {
    name: 'insult',
    description: 'Insults!',
    execute(message, args) {

        const text = "SELECT * FROM Insults WHERE server_id=$1";
        const values = [message.guild.id];
        DB.query(text, values, (err, res) => {
            if (err) {
                console.log(err.stack);
            }
            else {
                let msg = '';
                message.mentions.users.each(user => {
                    msg += `${user} `;
                });

                if(res.rows.length == 0) {
                    message.channel.send(`Insults list empty use: \`-add-insult\` command to add insults`);
                    return;
                }

                msg += `\n ${random_item(res.rows).insult}`;
                message.channel.send(msg);
            }
        });
    },
};