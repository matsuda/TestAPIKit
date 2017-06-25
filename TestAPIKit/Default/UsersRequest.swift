//
//  UsersRequest.swift
//  TestAPIKit_Default
//
//  Created by Kosuke Matsuda on 2017/06/25.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

struct UsersRequest: APIKit.Request {
    typealias Response = [User]

    let count: Int

    // MARK: - APIKit.Request

    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

    var method: APIKit.HTTPMethod {
        return .get
    }

    var path: String {
        return "/users"
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [User] {
        return try [User].init(JSON: object)
    }

    var parameters: Any? {
        return ["count": count]
    }
}
