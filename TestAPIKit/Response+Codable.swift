//
//  Response+Codable.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/20.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

struct User: Codable {
    let id: Int
    let login: String
    let url: String
}

extension Request where Response: Decodable {
    var dataParser: DataParser {
        return TransparentDataParser()
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        let decoder = JSONDecoder()
        return try decoder.decode(Response.self, from: data)
    }
}
