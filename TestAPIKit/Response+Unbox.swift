//
//  Response+Unbox.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/20.
//  Copyright © 2017年 Galapagos. All rights reserved.
//

import Foundation
import APIKit
import Unbox

//extension UserResponse: Unboxable {
//    init(unboxer: Unboxer) throws {
//    }
//}

//extension User: Unboxable {
//    init(unboxer: Unboxer) throws {
//        self.id = try unboxer.unbox(key: "id")
//        self.login = try unboxer.unbox(key: "login")
//        self.url = try unboxer.unbox(key: "url")
//    }
//}
//
//extension Request where Response: Unboxable {
//    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
//        guard let dictionary = object as? UnboxableDictionary else {
//            throw ResponseError.unexpectedObject(object)
//        }
//        return try unbox(dictionary: dictionary)
//    }
//}

