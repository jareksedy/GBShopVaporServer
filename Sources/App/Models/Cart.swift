//
//  File.swift
//  
//
//  Created by Ярослав on 14.12.2021.
//

import Vapor

struct Cart: Content {
    var amount: Int?
    var count: Int?
    var contents: [CartContents]
}

struct CartContents: Content {
    var productId: Int?
    var productName: String?
    var productPrice: Int?
    var quantity: Int?
}

