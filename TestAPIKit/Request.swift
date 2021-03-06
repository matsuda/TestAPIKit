//
//  Request.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/19.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

struct UserRequest: APIKit.Request {
    typealias Response = User

    let name: String

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
        return ["name": name]
    }
}
