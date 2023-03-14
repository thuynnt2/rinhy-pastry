let db = require("./database");
var session = require("express-session");

exports.createNewUser = function (reqData, createNewUser) {
  let sql = "INSERT INTO users SET ?";
  db.query(sql, reqData, (err, data) => {
    if (err) throw err;
    createNewUser(data);
  });
};

exports.sendEmail = function (email, title, content, sendMail) {
  var nodemailer = require("nodemailer");
  var transporter = nodemailer.createTransport({
    service: "gmail",
    auth: { user: "thuynntps19521@fpt.edu.vn", pass: "Iamawolf.262" },
    tls: { rejectUnauthorized: false },
  });
  var mailOptions = {
    from: "thuynntps19521@fpt.edu.vn",
    to: email,
    subject: title,
    html: content,
  };

  transporter.sendMail(mailOptions, function (error, info) {
    if (error) console.log(error);
    else {
      console.log("Đã gửi mail: " + info.response);
      sendMail(info.response)
    }
  });
};

exports.forgotPassword = function (email, pass, forgot) {
  let sql = "SELECT * FORM users WHERE email = ? ";
  db.query(sql, email, (err, data) =>{
    if (err) throw err;

    var nodemailer = require("nodemailer");
    var transporter = nodemailer.createTransport({
      service: "gmail",
      auth: { user: "thuynntps19521@fpt.edu.vn", pass: "Iamawolf.262" },
      tls: { rejectUnauthorized: false },
    });
    var mailOptions = {
      from: "thuynntps19521@fpt.edu.vn",
      to: email,
      subject: "Mật khẩu mới",
      html: pass,
    };

    transporter.sendMail(mailOptions, function (error, info) {
      if (error) console.log(error);
      else {
        console.log("Đã gửi mail: " + info.response);
        sendMail(info.response);
      }
    });

    forgot(data);
  })
}

exports.updataPassword = function (email, pass, updataPassword) {
  let sql = `UPDATE users SET password = ${pass} WHERE email = ${email}`;
  db.query(sql, (err, data) => {
    if (err) throw err;
    updataPassword(data);
  });
};

exports.getAll = function (getAll) {
  let sql = "SELECT * FROM users";
  db.query(sql, (err, data) => {
    if (err) throw err;
    getAll(data);
  });
};

exports.getByEmail = function (email, getByEmail) {
  let sql = "SELECT * FROM users WHERE email = ?";
  console.log(sql, email);
  db.query(sql, email, (err, data) => {
    
    if (err) throw err;
    getByEmail(data);
  });
};

exports.getAdmin = function (email, getAdmin) {
  let sql = "SELECT * FROM users WHERE email = ? AND role = 1";
  db.query(sql, email, (err, data) => {
    if (err) throw err;
    getAdmin(data);
  });
};
