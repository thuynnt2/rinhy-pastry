const express = require("express");
const router = express.Router();

router.get("/", (req, res) =>{
    res.render("user/cart");
  });

module.exports = router;
