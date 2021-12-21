//
//  UserController.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

class UserController {
    
    let successResponse = DefaultResponse(
        result: 1,
        successMessage: "Запрос успешно обработан.",
        errorMessage: nil
    )
    
    let errorIncompleteDataResponse = DefaultResponse(
        result: -2,
        successMessage: nil,
        errorMessage: "Неполные данные. Обязательные поля: логин, пароль, адрес эл. почты, имя, фамилия."
    )
    
    let errorWrongCredentials = DefaultResponse(
        result: -3,
        successMessage: nil,
        errorMessage: "Неверный логин или пароль."
    )
    
    let errorInvalidEmail = DefaultResponse(
        result: -4,
        successMessage: nil,
        errorMessage: "Некорректный адрес электронной почты."
    )
    
    func signup(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        guard body.login != nil, body.password != nil, body.name != nil, body.lastname != nil, body.email != nil else {
            return req.eventLoop.future(errorIncompleteDataResponse)
        }
        
        if body.email?.isValidEmail == false {
            return req.eventLoop.future(errorInvalidEmail)
        }
        
        return req.eventLoop.future(successResponse)
    }
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        guard body.id != nil, body.login != nil, body.password != nil, body.name != nil, body.lastname != nil, body.email != nil else {
            return req.eventLoop.future(errorIncompleteDataResponse)
        }
        
        if body.email?.isValidEmail == false {
            return req.eventLoop.future(errorInvalidEmail)
        }
        
        return req.eventLoop.future(successResponse)
    }
    
    func auth(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        if let userLogin = body.login, let userPassword = body.password {
            if userLogin != "jareksedy" || userPassword != "mypass" {
                return req.eventLoop.future(errorWrongCredentials)
            } else {
                return req.eventLoop.future(successResponse)
            }
        } else {
            return req.eventLoop.future(errorIncompleteDataResponse)
        }
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let _ = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        return req.eventLoop.future(successResponse)
    }
}

extension String {
    var isValidEmail: Bool {
        guard !self.lowercased().hasPrefix("mailto:") else { return false }
        guard let emailDetector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue) else { return false }
        let matches = emailDetector.matches(in: self, options: NSRegularExpression.MatchingOptions.anchored, range: NSRange(location: 0, length: self.count))
        guard matches.count == 1 else { return false }
        return matches[0].url?.scheme == "mailto"
    }
}
