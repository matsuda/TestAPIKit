//
//  Response+Default.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/19.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

protocol JSONDecodable {
    init(JSON: Any) throws
}

extension User: JSONDecodable {
    init(JSON: Any) throws {
        guard let dict = JSON as? [String: Any],
            let id = dict["id"] as? Int,
            let login = dict["login"] as? String,
            let url = dict["url"] as? String else {
                throw ResponseError.unexpectedObject(JSON)
        }
        self.id = id
        self.login = login
        self.url = url
    }
}

extension UserResponse: JSONDecodable {
    init(JSON: Any) throws {
        guard let array = JSON as? [[String: Any]] else {
            throw ResponseError.unexpectedObject(JSON)
        }
        self.users = try array.map { try User(JSON: $0) }
    }
}

extension Request where Response: JSONDecodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try Response(JSON: object)
    }
}
