const express = require("express");
const { render } = require("ejs");
const path = require("path");
var cookieParser = require("cookie-parser");
const sass = require("sass");
const route = require("./routes");
var session = require("express-session");
const fileUpload = require("express-fileupload");
const nodemailer = require("nodemailer");
// const api = require("./apis");

const app = express();
const port = 3000;

app.use(express.static(path.join(__dirname, "public")));
// app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(fileUpload());
// app.use(nodemailer());
app.use(
  session({
    secret: "abcdefg",
    resave: true,
    saveUninitialized: true,
    cookie: { maxAge: 60000 },
  })
);

app.set("view engine", "ejs");
app.set("views", "./resources/views");
app.set("views", path.join(__dirname, "resources", "views"));

//route init
route(app);
// api(app);

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
