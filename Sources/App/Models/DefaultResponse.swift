//
//  DefaultResponse.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

struct DefaultResponse: Content {
    var result: Int
    var successMessage: String?
    var errorMessage: String?
}
