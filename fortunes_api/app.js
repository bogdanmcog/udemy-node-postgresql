const express = require("express");
const fortunes = require("./data/fortunes.json");

const app = express();

app.get("/fortunes", (req, res) => {
  res.json(fortunes);
});

app.get("/fortunes/random", (req, res) => {
  const randomFortune = Math.floor(Math.random() * fortunes.length);
  res.json(fortunes[randomFortune]);
  console.log("requesting a random fortune", randomFortune);
});

app.get("/fortunes/:id", (req, res) => {
  console.log(req);
  res.json(fortunes.find((el) => el.id == req.params.id));
});
module.exports = app;
