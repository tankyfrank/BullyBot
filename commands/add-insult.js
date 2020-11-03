const fs = require("fs");
const reload = require("./reload.js");

module.exports = {
    name: 'add-insult',
    description: 'Adds insult to the collection!',
    execute(message, args) {
        let msg = args.join(' ');
        if(!msg || msg.length == 0) return;

        fs.readFile('./insult.json', 'utf8', (err, data) => {
            if (err) {
                console.log(err);
            }

            data = JSON.parse(data);
            data.insult.push(msg);

            fs.writeFile('./insult.json', JSON.stringify(data, null, 2), function writeJSON(err) {
                if (err) return console.log(err);
                reload.execute(message, ['insult']);
            });
        });

        message.channel.send(`Your insult: \`${msg}\` has been added!`);
    },
};