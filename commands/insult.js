const { insult } = require('../insult.json');


function random_item(items) {

    return items[Math.floor(Math.random() * items.length)];
}

module.exports = {
    name: 'insult',
    description: 'Insults!',
    execute(message, args) {

        let msg = '';
        message.mentions.users.each(user => {
            msg += `${user} `;
        });

        msg += `\n ${random_item(insult)}`;
        message.channel.send(msg);
    },
};