express = require("express")
 
app = express();
app.use(express.bodyParser())
app.listen 8080, "127.0.0.1"
 
app.get "/", (req, res) ->
    res.sendfile __dirname + "/index.html"
 
app.post "/echo", (req, res) ->
    returnJsonObj =
        echoMessage: req.body.message
    res.writeHead(200, {'Content-Type': 'application/json'});
    res.end(JSON.stringify(returnJsonObj));
 
console.log " Server Listening on 127.0.0.1:8080"