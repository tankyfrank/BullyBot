const ytdl = require('ytdl-core');
const DB = require('../database/db.js').execute();

function random_item(items) {

    return items[Math.floor(Math.random() * items.length)];
}

module.exports = {
    name: 'voice',
    description: 'Voice insult!',
    async execute(message, args) {
        if (message.member.voice.channel) {

            try {
                let link =  '';
                const text = "SELECT * FROM voice_insults WHERE server_id=$1";
                const values = [message.guild.id];
                DB.query(text, values, (err, res) => {
                    if (err) {
                        console.log(err.stack);
                    }
                    else {
                        if (res.rows.length == 0) {
                            message.channel.send(`Insults list empty use: \`-add-voice\` command to add voice insults`);
                            return;
                        }

                        link = `${random_item(res.rows).link}`;
                    }
                });

                const connection = await message.member.voice.channel.join();

                const dispatcher = connection.play(ytdl(link, { filter: 'audioonly' }));

                dispatcher.on('start', () => {
                    console.log('Audio is now playing!');
                });

                dispatcher.on('finish', () => {
                    console.log('Audio has finished playing!');
                    connection.disconnect();
                });

                // Always remember to handle errors appropriately!
                dispatcher.on('error', console.error);

            }

            catch (error) {
                console.log(error.message); // "Oops!"
            }

        }


    },
};