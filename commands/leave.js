module.exports = {
    name: 'leave',
    description: 'Disconnects from channel!',
    execute(message, args) {
        message.member.voice.channel.leave();
    },
};