let db = require("./database");

exports.getAll = function (getAll) {
  let sql = "SELECT * FROM products";
  db.query(sql, (err, data) => {
    if (err) throw err;
    getAll(data);
  });
};

exports.getByCateId = function (cateId, listProducts) { 
  let sql = `SELECT * FROM products WHERE cateId = ?`;
  db.query(sql, cateId, (err, data) => {
    if (err) throw err;
    listProducts(data);
  })
}

exports.getBy = function (element, listProducts) { 
  let sql = `SELECT * FROM products ORDER BY ${element} DESC `;
  db.query(sql, (err, data) => { 
    if (err) throw err;
    listProducts(data);
  })
}

exports.getOneById = function (id, getOneById) {
  let sql = "SELECT * FROM products WHERE id =?";
  db.query(sql, id, (err, data) => {
    if (err) throw err;
    getOneById(data[0]);
  });
};

exports.getProductsHot = function (properties, listProducts) {
  let sql = `SELECT * FROM products WHERE ${properties} = 1 ORDER BY views DESC`;
  db.query(sql, (err, data) => { 
    if (err) throw err;
    listProducts(data);
  })
}

exports.search = function (query, listProducts)  {
  let sql = `SELECT * FROM products WHERE name LIKE '%${query}%'`;
  db.query(sql,  (err, data) => {
    if(err) throw err;
    listProducts(data);
  })
};

exports.getNew = function (page, getNew) {
  let sql = `SELECT * FROM products ORDER BY id DESC LIMIT ?`;
  db.query(sql, page, (err, data) => {
    if (err) throw err;
    getNew(data);
  });
};

exports.create = function (reqData, add) {
  let sql = "INSERT INTO products SET ?";
  db.query(sql, reqData, (err, data) => {
    if (err) throw err;
    add(data);
  });
};

exports.update = function (id, reqData, update) {
  let sql = "UPDATE products SET ? WHERE id = ?";
  db.query(sql, [reqData, id], (err, data) => {
    if (err) throw err;
    update();
  });
};
