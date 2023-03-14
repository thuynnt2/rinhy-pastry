const express = require("express");
const router = express.Router();

router.get("/register", (req, res) => {
  res.render("user/register");
});

router.get("/login", (req, res) => {
  res.render("user/login");
});

router.get("/forgot-password", (req, res) => {
  res.render("user/forgot-password");
});

router.get("/", (req, res) => {
  res.render("user/home");
});

module.exports = router;
