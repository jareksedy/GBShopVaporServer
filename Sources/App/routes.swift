import Vapor

func routes(_ app: Application) throws {
    let controller = UserController()
    
    app.get { _ in return gbshopLogo }
    app.post("signup", use: controller.signup)
}


let gbshopLogo = """

   _|_|_|  _|_|_|      _|_|_|  _|    _|    _|_|    _|_|_|          _|_|    _|_|_|    _|_|_|        _|        _|
 _|        _|    _|  _|        _|    _|  _|    _|  _|    _|      _|    _|  _|    _|    _|        _|_|      _|  _|
 _|  _|_|  _|_|_|      _|_|    _|_|_|_|  _|    _|  _|_|_|        _|_|_|_|  _|_|_|      _|          _|      _|  _|
 _|    _|  _|    _|        _|  _|    _|  _|    _|  _|            _|    _|  _|          _|          _|      _|  _|
   _|_|_|  _|_|_|    _|_|_|    _|    _|    _|_|    _|            _|    _|  _|        _|_|_|        _|  _|    _|

 GBShop API 1.0 (C) Jarek Šedy
"""
