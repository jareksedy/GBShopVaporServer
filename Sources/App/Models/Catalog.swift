//
//  Catalog.swift
//  
//
//  Created by Ярослав on 11.12.2021.
//

import Vapor

struct Catalog: Content {
    var pageNumber: Int?
    var categoryId: Int?
}
