//
//  ItemsController.swift
//  
//
//  Created by Ярослав on 11.12.2021.
//

import Vapor

class ItemsController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[CatalogResponse]> {
        guard let body = try? req.content.decode(Catalog.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = [
        CatalogResponse(productId: 242, productName: "Эппл мэджик мышъ", price: 100500, shortDescription: nil, picUrl: nil),
        CatalogResponse(productId: 243, productName: "Эппл ойфонъ", price: 100600, shortDescription: nil, picUrl: nil),
        CatalogResponse(productId: 244, productName: "Эппл ойпадъ", price: 100666, shortDescription: nil, picUrl: nil)
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getGood(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        let response = GoodResponse(result: 1, price: 100500, description: "Большая красивая Эппл магическая мыш!")
        
        return req.eventLoop.future(response)
    }
}
