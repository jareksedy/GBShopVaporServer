//
//  CatalogResponse.swift
//  
//
//  Created by Ярослав on 11.12.2021.
//

import Vapor

struct CatalogResponse: Content {
    let productId: Int?
    let productName: String?
    let price: Int?
}
