//
//  File.swift
//  
//
//  Created by Ярослав on 12.12.2021.
//

import Vapor

struct Review: Content {
    var productId: Int?
    var userId: Int?
    var reviewText: String?
    var reviewId: Int?
}
