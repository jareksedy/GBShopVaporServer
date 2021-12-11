//
//  UserController.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

class UserController {
    func signup(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Пользователь успешно зарегистрирован.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Данные пользователя успешно изменены.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func auth(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Пользователь успешно авторизован.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Пользователь успешно деавторизован.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
