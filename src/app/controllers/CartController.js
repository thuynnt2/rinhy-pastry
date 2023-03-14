
class CartController {

  //[GET] /cart
  index(req, res) {
    res.render("user/cart");
  }
}

module.exports = new CartController;