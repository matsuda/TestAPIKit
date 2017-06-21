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

extension UserResponse: CustomStringConvertible {
    var description: String {
        return """
\( type(of: self) ) {
users: {
\( users.map{"\($0)"}.joined(separator: "\n") )
}
}
"""
    }
}

extension User: CustomStringConvertible {
    var description: String {
        return """
\( type(of: self) ) {
id   : \(id)
login: \(login)
url  : \(url)
}
"""
    }
}
