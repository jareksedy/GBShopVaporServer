//
//  ReviewResponse.swift
//  
//
//  Created by Ярослав on 12.12.2021.
//

import Vapor

struct ReviewResponse: Content {
    let userId: Int?
    let reviewText: String?
}
