const express = require("express");
const router = express.Router();

router.get("/:cateId", (req, res) => {
  let cateId = req.params.cateId;
  res.render("user/shop", { cateId: cateId });
});

router.get("/search/:query", (req, res) => {
  let query = req.params.query;
  res.render("user/shop-search", { query: query });
});

router.get("/:cateId/:productId", (req, res) => {
  let cateId = req.params.cateId;
  let productId = req.params.productId;
  res.render("user/shop-detail", {
    cateId: cateId,
    productId: productId,
  });
});

router.get("/", (req, res) => {
  res.render("user/shop-category");
});

module.exports = router;
