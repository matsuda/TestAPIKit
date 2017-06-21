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

extension User: Mappable {
//    init(id: Int, login: String, url: String) {
//        self.id = id
//        self.login = login
//        self.url = url
//    }
    
    init?(map: Map) {
        self.init(
            id: map["id"].value()!,
            login: map["login"].value()!,
            url: map["url"].value()!
        )
    }
    
    mutating func mapping(map: Map) {
//        id <- map["id"]
//        login <- map["login"]
//        url <- map["url"]
    }
}

extension Request where Response: Mappable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let json = object as? [String: Any], let response = Mapper<Response>().map(JSON: json) else {
            throw ResponseError.unexpectedObject(object)
        }
        return response
    }
}
