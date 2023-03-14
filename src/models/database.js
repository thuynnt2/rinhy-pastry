let mysql = require("mysql");

let db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "rinhy-pastry",
});

db.connect(function (err) {
  if (err) throw err;
  console.log("Connected to MySQL...");
});

module.exports = db; 
