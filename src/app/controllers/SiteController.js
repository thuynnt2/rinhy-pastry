
class SiteController {

    // [GET] 
    index(req, res) {
        res.render("user/home");
    }

    register(req, res) { 
        res.render("user/register");
    }

    login(req, res) {
        res.render("user/login");
    }

}

module.exports = new SiteController;
