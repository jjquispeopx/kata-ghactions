let express = require("express");
let logger = require("morgan");
let app = express();

app.use(logger("dev"));

app.get("/", (req, res) => {
  res.json({mes: "hello world"});
});

module.exports = app
