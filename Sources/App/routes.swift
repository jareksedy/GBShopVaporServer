import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "TEST GBSHOP VAPOR SERVER."
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
