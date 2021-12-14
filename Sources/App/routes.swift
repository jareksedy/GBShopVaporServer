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
                                                                                                                                                          
     ,o888888o.    8 888888888o      d888888o.   8 8888        8     ,o888888o.     8 888888888o                      .8.          8 888888888o    8 8888
    8888     `88.  8 8888    `88.  .`8888:' `88. 8 8888        8  . 8888     `88.   8 8888    `88.                   .888.         8 8888    `88.  8 8888
 ,8 8888       `8. 8 8888     `88  8.`8888.   Y8 8 8888        8 ,8 8888       `8b  8 8888     `88                  :88888.        8 8888     `88  8 8888
 88 8888           8 8888     ,88  `8.`8888.     8 8888        8 88 8888        `8b 8 8888     ,88                 . `88888.       8 8888     ,88  8 8888
 88 8888           8 8888.   ,88'   `8.`8888.    8 8888        8 88 8888         88 8 8888.   ,88'                .8. `88888.      8 8888.   ,88'  8 8888
 88 8888           8 8888888888      `8.`8888.   8 8888        8 88 8888         88 8 888888888P'                .8`8. `88888.     8 888888888P'   8 8888
 88 8888   8888888 8 8888    `88.     `8.`8888.  8 8888888888888 88 8888        ,8P 8 8888                      .8' `8. `88888.    8 8888          8 8888
 `8 8888       .8' 8 8888      88 8b   `8.`8888. 8 8888        8 `8 8888       ,8P  8 8888                     .8'   `8. `88888.   8 8888          8 8888
    8888     ,88'  8 8888    ,88' `8b.  ;8.`8888 8 8888        8  ` 8888     ,88'   8 8888                    .888888888. `88888.  8 8888          8 8888
     `8888888P'    8 888888888P    `Y8888P ,88P' 8 8888        8     `8888888P'     8 8888                   .8'       `8. `88888. 8 8888          8 8888

GBShop API v.1.0.5. (C) Jarek Šedy.
"""
