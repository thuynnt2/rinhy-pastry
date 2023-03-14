class AdminController {
  //[GET] /home
  index(req, res) {
    res.render("admin/home");
    // if (req.session.daDangNhap) {
    //   res.render("admin/home");
    // } else {
    //   req.session.back = "admin/home";
    //   res.render("user/login");
    // }
  }

  categories_list(req, res) {
    res.render("admin/categories-list");
    // if (req.session.daDangNhap) {
    //   res.render("admin/categories-list");
    // } else {
    // req.session.back = "admin/categories-list";
    // res.render("user/login");
    // }
  }

  products_list(req, res) {
    res.render("admin/products-list");
    // if (req.session.daDangNhap) {
    //   res.render("admin/products-list");
    // } else {
    //   // req.session.back = "admin/products-list";
    //   // res.render("user/login");
    // }
  }

  product_add(req, res) {
    res.render("admin/product-add");
    // if (req.session.daDangNhap) {
    //   res.render("admin/product-add");
    // } else {
    //   // req.session.back = "admin/product-add";
    //   // res.render("user/login");
    // }
  }

  orders_list(req, res) {
    res.render("admin/orders-list");
    // if (req.session.daDangNhap) {
    //   res.render("admin/orders-list");
    // } else {
    //   // req.session.back = "admin/orders-list";
    //   // res.render("user/login");
    // }
  }
}

module.exports = new AdminController();
