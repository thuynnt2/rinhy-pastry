class ShopController {
  //[GET] /shop
  index(req, res) {
    res.render("user/shop-category");
  }

  // [GET] /shop/:cateId
  category(req, res) {
    let cateId = req.params.cateId;
    res.render("user/shop", { cateId: cateId });
  }

  search(req, res) {
    let query = req.params.query;
    res.render("user/shop-search", { query: query });
  }

  // [GET] /shop/:slug
  show(req, res) {
    let cateId = req.params.cateId;
    let productId = req.params.productId;
    res.render("user/shop-detail", {
      cateId: cateId,
      productId: productId,
    });
  }
}

module.exports = new ShopController();
