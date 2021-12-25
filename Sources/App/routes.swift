import Vapor

func routes(_ app: Application) throws {
    let userController = UserController()
    let itemsController = ItemsController()
    let reviewsController = ReviewsController()
    let cartController = CartController()
    
    app.get { _ in return gbshopLogo }
    app.post("auth", use: userController.auth)
    app.post("logout", use: userController.logout)
    app.post("signup", use: userController.signup)
    app.post("changeuserdata", use: userController.changeUserData)
    app.post("getcatalog", use: itemsController.getCatalog)
    app.post("getgood", use: itemsController.getGood)
    app.post("getreviews", use: reviewsController.getReviews)
    app.post("addreview", use: reviewsController.addReview)
    app.post("removereview", use: reviewsController.removeReview)
    app.post("getcart", use: cartController.getCart)
    app.post("paycart", use: cartController.payCart)
    app.post("addtocart", use: cartController.addToCart)
    app.post("deletefromcart", use: cartController.deleteFromCart)
}


let gbshopLogo = """
                                                                                                                                                          
 .88888.   888888ba  .d88888b  dP                           .d888888   888888ba  dP
d8'   `88  88    `8b 88.    "' 88                          d8'    88   88    `8b 88
88        a88aaaa8P' `Y88888b. 88d888b. .d8888b.  88d888b. 88aaaaa88a a88aaaa8P' 88
88   YP88  88   `8b.       `8b 88'  `88 88'  `88  88'  `88 88     88   88        88
Y8.   .88  88    .88 d8'   .8P 88    88 88.  .88  88.  .88 88     88   88        88
 `88888'   88888888P  Y88888P  dP    dP `88888P'  88Y888P' 88     88   dP        dP
________________________________________________o~88~o_____________________________
                                                  dP

GBShop API v.1.0.7. (C) Jarek Šedy.
"""
