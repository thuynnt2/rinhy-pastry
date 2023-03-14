const express = require("express");
const router = express.Router();

const modelProduct = require("../models/Product");

router.post("/", (req, res) => {
  let reqData = req.body;
  console.log(reqData);
  modelProduct.create(reqData, function () {
    res.send(reqData.name);
  });
});

router.put("/:id", (req, res) => {
  let data = req.body;
  let id = req.params.id;
  console.log(data);
  modelProduct.update(id, data, function () {
    res.json({ thongbao: `Đã cập nhật sản phẩm có id: ${id}` });
  });
});

router.get("/:id", (req, res) => {
  let id = req.params.id;
  modelProduct.getOneById(id, function (data) {
    res.json(data);
  });
});

router.get("/search/:query", (req, res) => {
  let query = req.params.query;
  modelProduct.search(query, function (products) {
    res.json(products);
  });
});

router.get("/category/:cateId", (req, res) => {
  let cateId = req.params.cateId;
  console.log(cateId);
  modelProduct.getByCateId(cateId, (listProducts) => {
    res.json(listProducts);
  });
});

router.get("/new/:page", (req, res) => {
  let page = req.params.page;
  modelProduct.getNew(+page, function (productsNew) {
    res.json(productsNew);
  });
});

router.get("/main/:element", (req, res) => {
  let element = req.params.element;
  modelProduct.getBy(element, function (products) {
    res.json(products);
  });
});

router.get("/hot/:properties", (req, res) => {
  let properties = req.params.properties;
  modelProduct.getProductsHot(properties, function (listProducts) {
    res.json(listProducts);
  });
});

router.get("/", (req, res) => {
  modelProduct.getAll((listProducts) => {
    res.json(listProducts);
  });
});

module.exports = router;
