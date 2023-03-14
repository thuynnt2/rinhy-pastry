const express = require("express");
const router = express.Router();

router.get("/login", (req, res) => {
  res.render("admin/login");
});

router.get("/categories-list", (req, res) => {
  res.render("admin/categories-list");
});

router.get("/products-list", (req, res) => {
  res.render("admin/products-list");
});

router.get("/product-add", (req, res) => {
  res.render("admin/product-add");
});

router.get("/orders-list", (req, res) => {
  res.render("admin/orders-list");
});

router.get("/sendEmail", function (req, res, next) {
  if (req.session.daDangNhap) {
    res.render("admin/send-email");
  } else {
    req.session.back = "/api/users/admin/login";
    res.redirect("/admin/login");
  }
});

router.get("/", async (req, res) => {
  if (req.session.daDangNhap) {
    res.render("admin/home");
  } else {
    req.session.back = "/api/users/admin/login";
    res.redirect("/admin/login");
  }
});

module.exports = router;
