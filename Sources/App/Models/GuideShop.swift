//
//  GuideShop.swift
//  App
//
//  Created by Eduardo Pinto on 15/08/19.
//

import Vapor
import FluentSQLite

struct GuideShop: SQLiteModel {
    var id: Int?
    let name: String
    let address: String
    let location: Coordinate
}

extension GuideShop: Migration {}

extension GuideShop: Content {}
