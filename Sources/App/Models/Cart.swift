//
//  File.swift
//  
//
//  Created by Ярослав on 14.12.2021.
//

import Vapor

struct Cart: Content {
    var productId: Int?
    var quantity: Int?
}
