const ytdl = require('ytdl-core');

module.exports = {
    name: 'voice',
    description: 'Voice insult!',
    async execute(message, args) {
        if (message.member.voice.channel) {

            try {
                // if (message.mentions.has(message.client.users.cache.find(user => user.username === 'Lord_Gable'))) {
                if (message.mentions.has(message.client.users.cache.find(user => user.username === 'Blade ax'))) {

                    const connection = await message.member.voice.channel.join();

                    const dispatcher = connection.play('https://www.youtube.com/watch?v=qu_uJQQo_Us');

                    dispatcher.on('start', () => {
                        console.log('Audio is now playing!');
                    });

                    dispatcher.on('finish', () => {
                        console.log('Audio has finished playing!');
                    });

                    // Always remember to handle errors appropriately!
                    dispatcher.on('error', console.error);


                }
                else {
                    const connection = await message.member.voice.channel.join();

                    const dispatcher = connection.play(ytdl('https://www.youtube.com/watch?v=vzYYW8V3Ibc'));

                    dispatcher.on('start', () => {
                        console.log('Audio is now playing!');
                    });

                    dispatcher.on('finish', () => {
                        console.log('Audio has finished playing!');
                    });
                }
            }

            catch (error) {
                console.log(error.message); // "Oops!"
            }



        }


    },
};