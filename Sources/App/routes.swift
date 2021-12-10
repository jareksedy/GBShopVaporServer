import Vapor


func routes(_ app: Application) throws {
    let controller = UserController()
    app.post("register", use: controller.register)
}
