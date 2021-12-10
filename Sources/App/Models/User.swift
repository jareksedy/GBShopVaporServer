//
//  User.swift
//  
//
//  Created by Ярослав on 10.12.2021.
//

import Vapor

struct User: Content {
    let id: Int?
    let login: String?
    let password: String?
    let email: String?
    let gender: String?
    let creditCard: String?
    let bio: String?
    let name: String?
    let lastname: String?
}
