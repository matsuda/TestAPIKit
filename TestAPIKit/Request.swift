//
//  Request.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/19.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

struct UserRequest: Request {
    typealias Response = User
    
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/users/matsuda"
    }

//    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> UserResponse {
//        return try UserResponse(object: object)
//    }
}
