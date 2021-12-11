//
//  ItemsController.swift
//  
//
//  Created by Ярослав on 11.12.2021.
//

import Vapor

class ItemsController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogResponse]> {
        guard let body = try? req.content.decode(User.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
        CatalogResponse(productId: 242, productName: "Эппл мэджик мышъ", price: 100500),
        CatalogResponse(productId: 243, productName: "Эппл ойфонъ", price: 100600),
        CatalogResponse(productId: 244, productName: "Эппл ойпадъ", price: 100666)
        ]
        
        return req.eventLoop.future(response)
    }
}
