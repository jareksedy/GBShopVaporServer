//
//  GoodResponse.swift
//  
//
//  Created by Ярослав on 12.12.2021.
//

import Vapor

struct GoodResponse: Content {
    let result: Int?
    let productId: Int?
    let productName: String?
    let price: Int?
    let description: String?
    let picUrl: String?
}
