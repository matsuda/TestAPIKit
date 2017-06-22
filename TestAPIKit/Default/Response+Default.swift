//
//  Response+Default.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/19.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

extension User {
    init(object: Any) throws {
        guard let dict = object as? [String: Any],
            let id = dict["id"] as? Int,
            let login = dict["login"] as? String,
            let url = dict["url"] as? String else {
                throw ResponseError.unexpectedObject(object)
        }
        self.id = id
        self.login = login
        self.url = url
    }
}

extension UserRequest {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> User {
        return try User(object: object)
    }
}
