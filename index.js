const fs = require('fs');
const Discord = require('discord.js');
const { prefix, token } = require('./config.json');
const DB = require('./database/db.js').execute();


const client = new Discord.Client();
client.commands = new Discord.Collection();


const commandFiles = fs.readdirSync('./commands').filter(file => file.endsWith('.js'));

const cooldowns = new Discord.Collection();

for (const file of commandFiles) {
    const command = require(`./commands/${file}`);
    client.commands.set(command.name, command);
}

client.once('ready', () => {
    console.log('BullyBot is online!')
});

client.on("guildCreate", (guild) => {
    // This event triggers when the bot joins a guild.    

    const text = 
    "INSERT INTO Servers (id) VALUES ($1) ON CONFLICT (id) DO UPDATE SET id = $1";
    const values = [guild.id];

    // callback
    DB.query(text, values, (err, res) => {
        if (err) {
            console.log(err.stack)
        } else {
            console.log(res.rows)
        }
    });
});

// client.on("guildUpdate", (oldGuild, newGuild) => {
//     // This event triggers whenever the guild is updated.  
//     console.log(`Joined new guild: ${guild.name}`);
// });

client.on('message', message => {

    if (!message.content.startsWith(prefix) || message.author.bot) return;

    const args = message.content.slice(prefix.length).trim().split(/ +/);
    const commandName = args.shift().toLowerCase();

    if (!client.commands.has(commandName)) return;

    const command = client.commands.get(commandName);


    if (command.guildOnly && message.channel.type === 'dm') {
        return message.reply('I can\'t execute that command inside DMs!');
    }

    if (command.args && !args.length) {
        let reply = `You didn't provide any arguments, ${message.author}!`;

        if (command.usage) {
            reply += `\nThe proper usage would be: \`${prefix}${command.name} ${command.usage}\``;
        }

        return message.channel.send(reply);
    }


    try {
        command.execute(message, args);
    } catch (error) {
        console.error(error);
        message.reply('there was an error trying to execute that command!');
    }

});

client.login(token);