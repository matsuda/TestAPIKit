//
//  Response+ObjectMapper.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/20.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit
import ObjectMapper

extension User: ImmutableMappable {
    init(map: Map) throws {
        id = try map.value("id")
        login = try map.value("login")
        url = try map.value("url")
    }

    mutating func mapping(map: Map) {
        id >>> map["id"]
        login >>> map["login"]
        url >>> map["url"]
    }
}

extension Request where Response: ImmutableMappable {
    var dataParser: DataParser {
        return StringDataParser()
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let json = object as? String else {
            throw ResponseError.unexpectedObject(object)
        }
        return try Response(JSONString: json)
    }
}
