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
            CatalogResponse(productId: 123, productName: "Эппл тряпочка", price: 1990, shortDescription: "Тряпочка Эппл протирать всякое.", picUrl: "https://i.imgur.com/WzgFAPe.jpg"),
            CatalogResponse(productId: 124, productName: "Магическая эппл-мыш", price: 7900, shortDescription: "Мыш Мэджик Маус Эппл магическая.", picUrl: "https://i.imgur.com/zc2ksyh.jpg"),
            CatalogResponse(productId: 125, productName: "Наушники эйрподы про", price: 24990, shortDescription: "Стильные, модные, молодежные наушники эппл.", picUrl: "https://i.imgur.com/F0ZHN9T.jpg"),
            CatalogResponse(productId: 126, productName: "Эппл Эйртаг одна штука", price: 2990, shortDescription: "Позволяет следить за людьми.", picUrl: "https://i.imgur.com/8T965iA.jpg")
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getGood(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        guard let body = try? req.content.decode(Good.self) else { throw Abort(.badRequest) }
        
        print(body)
        
        var response = GoodResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        
        switch body.productId {
        case 123: response = GoodResponse(result: 1, productId: 123, productName: "Эппл тряпочка", price: 1990, description: "Тряпочка Эппл протирать всякое.", picUrl: "https://i.imgur.com/WzgFAPe.jpg")
        case 124: response = GoodResponse(result: 1, productId: 124, productName: "Магическая эппл-мыш", price: 7900, description: "Мыш Мэджик Маус Эппл магическая.", picUrl: "https://i.imgur.com/zc2ksyh.jpg")
        case 125: response = GoodResponse(result: 1, productId: 125, productName: "Наушники эйрподы про", price: 24990, description: "Стильные, модные, молодежные наушники эппл.", picUrl: "https://i.imgur.com/F0ZHN9T.jpg")
        case 126: response = GoodResponse(result: 1, productId: 126, productName: "Эппл Эйртаг одна штука", price: 2990, description: "Позволяет следить за людьми.", picUrl: "https://i.imgur.com/8T965iA.jpg")
        default: response = GoodResponse(result: 1, productId: 999, productName: "Неизвестный товар.", price: 0, description: "Неизвестный товар, непонятный.", picUrl: nil)
        }
        
        return req.eventLoop.future(response)
    }
}
