//
//  Request.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/19.
//  Copyright © 2017年 Galapagos. All rights reserved.
//

import Foundation
import APIKit

struct UserRequest: Request {
    typealias Response = UserResponse
    
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/users"
    }

//    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> UserResponse {
//        return try UserResponse(object: object)
//    }
}
