import Vapor

func routes(_ app: Application) throws {
    let userController = UserController()
    let itemsController = ItemsController()
    
    app.get { _ in return gbshopLogo }
    app.post("auth", use: userController.auth)
    app.post("logout", use: userController.logout)
    app.post("signup", use: userController.signup)
    app.post("changeuserdata", use: userController.changeUserData)
    app.post("getcatalog", use: itemsController.getCatalog)
    app.post("getgood", use: itemsController.getGood)
}


let gbshopLogo = """

   _|_|_|  _|_|_|      _|_|_|  _|    _|    _|_|    _|_|_|          _|_|    _|_|_|    _|_|_|        _|        _|
 _|        _|    _|  _|        _|    _|  _|    _|  _|    _|      _|    _|  _|    _|    _|        _|_|      _|  _|
 _|  _|_|  _|_|_|      _|_|    _|_|_|_|  _|    _|  _|_|_|        _|_|_|_|  _|_|_|      _|          _|      _|  _|
 _|    _|  _|    _|        _|  _|    _|  _|    _|  _|            _|    _|  _|          _|          _|      _|  _|
   _|_|_|  _|_|_|    _|_|_|    _|    _|    _|_|    _|            _|    _|  _|        _|_|_|        _|  _|    _|

 GBShop API 1.0 (C) Jarek Šedy
"""
