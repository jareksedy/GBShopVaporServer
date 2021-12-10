//
//  AuthController.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

class UserController {
    func register(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        //print(req.description)
        guard let body = try? req.content.decode(User.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
}
