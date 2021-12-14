//
//  File.swift
//  
//
//  Created by Ярослав on 14.12.2021.
//

import Vapor

class CartController {
    func getCart(_ req: Request) throws -> EventLoopFuture<CartResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = CartResponse(
            amount: 46600,
            count: 2,
            contents: [
                CartContents(productId: 123, productName: "Эппл магическая мыш.", productPrice: 45600, quantity: 1),
                CartContents(productId: 345, productName: "Эппл тряпочка протирать всякое.", productPrice: 1000, quantity: 1)
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func payCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товары в корзине успешно оплачены.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func addToCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Cart.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар успешно добавлен в корзину.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func deleteFromCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(Cart.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            successMessage: "Товар успешно удален из корзины.",
            errorMessage: nil
        )
        
        return req.eventLoop.future(response)
    }
}
