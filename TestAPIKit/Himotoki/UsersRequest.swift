//
//  UsersRequest.swift
//  TestAPIKit_Himotoki
//
//  Created by Kosuke Matsuda on 2017/06/25.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

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

    var parameters: Any? {
        return ["count": count]
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [User] {
        return try decodeArray(object)
    }
}
