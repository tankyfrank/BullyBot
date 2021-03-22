const sanitizeUrl = require("@braintree/sanitize-url").sanitizeUrl;
const DB = require('../database/db.js').execute();

module.exports = {
    name: 'add-voice',
    description: 'Add Voice Insult!',
    async execute(message, args) {
        try {
            let msg = args.join(' ');
            if(!msg || msg.length == 0) return;

            let myUrl = new URL(msg);

            if(myUrl.hostname != "www.youtube.com") return;

            let sanitizedUrl = sanitizeUrl(myUrl.href); 

            console.log(sanitizedUrl);
    
            const text = 'INSERT INTO Voice_Insults(server_id, link, uploaded_by) VALUES($1, $2, $3)';
            const values = [message.guild.id, sanitizedUrl, message.author.id];
    
            DB.query(text, values, (err, res) => {
                if (err) {
                    console.log(err.stack)
                } else {
                    // console.log(res.rows)
                }
            });

        } catch (error) {
            console.log(error);
        }
    },
};