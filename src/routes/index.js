const siteRouter = require("./site");
const adminRouter = require("./admin");
const shopRouter = require("./shop");
const cartRouter = require("./cart");
const categoriesApi = require("./categories.api");
const productsApi = require("./products.api");
const userApi = require("./user.api");

function route(app) {
  app.use("/shop", shopRouter);

  app.use("/cart", cartRouter);

  app.use("/admin", adminRouter);

  app.use("/api/categories", categoriesApi);

  app.use("/api/products", productsApi);

  app.use('/api/users/', userApi);

  app.use("/", siteRouter);
}

module.exports = route;
