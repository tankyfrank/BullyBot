module.exports = {
	name: 'args-info',
	description: 'Information about the arguments provided.',
	args: true,
	usage: '<user> <role>',
	execute(message, args) {
		if (args[0] === 'foo') {
			return message.channel.send('bar');
		}

		message.channel.send(`
			Arguments: ${args}\n 
			Arguments length: ${args.length}
		`);
	},
};