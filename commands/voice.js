function CloseConnection(connection) {
    console.log("Time to disconnect!");
    connection.disconnect();
}
// var timeOutID;

module.exports = {
    name: 'voice',
    description: 'Voice insult!',
    async execute(message, args) {
        if (message.member.voice.channel) {

            if (message.mentions.has(message.client.users.cache.find(user => user.username === 'Lord_Gable'))) {
            // if (message.mentions.has(message.client.users.cache.find(user => user.username === 'Blade ax'))) {

                const connection = await message.member.voice.channel.join();

                const dispatcher = connection.play('./Dameon_to_Gabe_2.mov');

                dispatcher.on('start', (timeOutID) => {
                    console.log('Audio is now playing!');
                    // // If the bot is used again
                    // clearTimeout(timeOutID);
                    // timeOutID = undefined;
                });

                dispatcher.on('finish', () => {
                    console.log('Audio has finished playing!');
                });

                // Always remember to handle errors appropriately!
                dispatcher.on('error', console.error);

                // console.log(timeOutID);
                // timeOutID = setTimeout(function () { CloseConnection(connection); }, 1000 * 10);
                // console.log(timeOutID);

            }

        }


    },
};



// 
// if (message.member.voice.channel) {
//     message.member.voice.channel.join()
//         .then(connection => {
//             console.log("Connected!");
//             connection.play("./Dameon_to_Gabe_2.mov");
//         })
//         .catch(console.error);
// }