//
//  Response+Default.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/19.
//  Copyright © 2017年 Galapagos. All rights reserved.
//

import Foundation
import APIKit

//extension UserResponse {
//    init(object: Any) throws {
//        guard let array = object as? Array<Any> else {
//            throw ResponseError.unexpectedObject(object)
//        }
//        self.users = array.flatMap {
//            try? User(object: $0)
//        }
//    }
//}
//
//extension User {
//    init(object: Any) throws {
//        guard let dict = object as? [String: Any],
//            let id = dict["id"] as? Int,
//            let login = dict["login"] as? String,
//            let url = dict["url"] as? String else {
//                throw ResponseError.unexpectedObject(object)
//        }
//        self.id = id
//        self.login = login
//        self.url = url
//    }
//}
//
//extension UserRequest {
//    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> UserResponse {
//        return try UserResponse(object: object)
//    }
//}

