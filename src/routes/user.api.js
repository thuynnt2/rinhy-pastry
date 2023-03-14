const express = require("express");
const router = express.Router();

const modelUser = require("../models/User");

router.post("/register", (req, res) => {
  let email = req.body.email;
  let password = req.body.password;

  const bcrypt = require("bcrypt");
  var salt = bcrypt.genSaltSync(10);
  var pass_mahoa = bcrypt.hashSync(password, salt);

  let reqData = {
    email: email,
    password: pass_mahoa,
  };

  modelUser.createNewUser(reqData, () => {
    res.json(reqData);
  });
});

router.post("/login", (req, res) => {
  let email = req.body.email;
  let password = req.body.password;
  modelUser.getByEmail(email, (data) => {
    let pass_fromdb = data[0].password;
    const bcrypt = require("bcrypt");
    var result = bcrypt.compareSync(password, pass_fromdb);

    if (result) {
      res.json(data);
    }
  });
});

router.post("/forgot-password", (req, res) => {
  let email = req.body.email;
  let password = req.body.password;
  modelUser.forgotPassword(email, password, (data) => {
    const bcrypt = require("bcrypt");
    var salt = bcrypt.genSaltSync(10);
    var pass_mahoa = bcrypt.hashSync(password, salt);
    let reqData = {
      email: email,
      password: pass_mahoa,
    };
    modelUser.updataPassword(reqData, () => {
      res.json(reqData);
    });
  });
});

router.post("/sendMail", (req, res) => {
  let email = req.body.email;
  let title = req.body.title;
  let content = req.body.content;
  console.log(email, title, content);
  modelUser.sendEmail(email, title, content);
});

router.post("/admin/login", (req, res) => {
  let email = req.body.email;
  let password = req.body.password;
  modelUser.getAdmin(email, (data) => {
    let pass_fromdb = data[0].password;
    const bcrypt = require("bcrypt");
    var result = bcrypt.compareSync(password, pass_fromdb);

    if (result) {
      var sess = req.session; //initialize session variable
      sess.daDangNhap = true;
      console.log(`successfully`);
      res.json({
        data: data,
        sess: sess,
        status: sess.daDangNhap,
        link: req.originalUrl,
      });

      // if (sess.back) {
      //   console.log(sess.back);
      //   res.redirect(sess.back);
      // } else {
      //   res.redirect("/admin/categories-list");
      // }
    } else {
      res.json("error");
    }
  });
});

router.get("/", (req, res) => {
  modelUser.getAll((listUsers) => {
    res.json(listUsers);
  });
});

module.exports = router;
