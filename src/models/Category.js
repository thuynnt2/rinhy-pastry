let db = require("./database");

exports.getAll = function (getAll) {
  let sql = "SELECT * FROM categories";
  db.query(sql, (err, data) => {
    if (err) throw err;
    getAll(data);
  });
};

exports.getOne = function (id, getOne) {
  let sql = "SELECT * FROM categories WHERE id =?";
  db.query(sql, id, (err, data) => {
    if (err) throw err;
    getOne(data[0]);
  });
};

exports.create = function (reqData, add) {
  let sql = "INSERT INTO categories SET ?";
  db.query(sql, reqData, (err, data) => {
    if (err) throw err;
    add(data);
  });
};

exports.update = function (id, reqData, update) {
  let sql = "UPDATE categories SET ? WHERE id = ?";
  db.query(sql, [reqData, id], (err, data) => {
    if (err) throw err;
    update();
  });
};
