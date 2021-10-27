let express = require("express");
let logger = require("morgan");
let app = express();

app.use(logger("dev"));

let AWS_SECRET_ACCESS_KEY = "supersecret-key"

app.get("/", (req, res) => {
  res.json({mes: "hello world"});
});

module.exports = app
