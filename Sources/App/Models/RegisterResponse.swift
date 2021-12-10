//
//  RegisterResponse.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
