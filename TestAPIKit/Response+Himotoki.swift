//
//  Response+Himotoki.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/19.
//  Copyright © 2017年 Galapagos. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

extension UserResponse: Himotoki.Decodable {
    static func decode(_ e: Extractor) throws -> UserResponse {
        return try UserResponse(
            users: decodeArray(e.rawValue)
        )
    }
}

extension User: Himotoki.Decodable {
    static func decode(_ e: Extractor) throws -> User {
        return try User(
            id: e <| "id",
            login: e <| "login",
            url: e <| "url"
        )
    }
}

extension Request where Response: Himotoki.Decodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try Response.decodeValue(object)
    }
}
