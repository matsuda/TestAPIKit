//
//  Response.swift
//  TestAPIKit_Default
//
//  Created by matsuda on 2017/06/22.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

struct UserResponse {
    let users: [User]
}

extension UserResponse: Decodable {
    init(from decoder: Decoder) throws {
        var users: [User] = []
        var unkeyedContainer = try decoder.unkeyedContainer()
        while !unkeyedContainer.isAtEnd {
            let user = try unkeyedContainer.decode(User.self)
            users.append(user)
        }
        self.init(users: users)
    }
}

struct User: Codable {
    let id: Int
    let login: String
    let url: String
}
