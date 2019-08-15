//
//  Coordinate.swift
//  App
//
//  Created by Eduardo Pinto on 15/08/19.
//

import Vapor
import FluentSQLite

struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double
}
