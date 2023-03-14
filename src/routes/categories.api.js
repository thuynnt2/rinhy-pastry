const express = require("express");
const router = express.Router();

const modelCategory = require('../models/Category');

router.get("/", (req, res) => {
  modelCategory.getAll((listCategories) => {
    res.json(listCategories);
  });
});

router.get("/:id", (req, res) => {
  let id = req.params.id;
  modelCategory.getOne(id, function (data) {
    res.json(data);
  });
});

router.post("/", (req, res) => {
  let reqData = req.body;
  console.log(reqData);
  modelCategory.create(reqData, function () {
    res.json({ thongbao: "Đã thêm  xong một cate mới" });
  });
});

router.put("/:id", (req, res) => {
  let data = req.body;
  let id = req.params.id;
  console.log(data);
    modelCategory.update(id, data, function () {
      res.json({ thongbao: "Đã cập nhật user " });
    });
});

module.exports = router;
