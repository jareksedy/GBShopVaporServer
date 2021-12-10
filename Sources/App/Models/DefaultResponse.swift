//
//  DefaultResponse.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

struct DefaultResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
