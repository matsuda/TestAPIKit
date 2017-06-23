//
//  Response.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/19.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

struct UserResponse {
    let users: [User]
}

struct User {
    let id: Int
    let login: String
    let url: String
}
