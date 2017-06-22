//
//  Response.swift
//  TestAPIKit_Default
//
//  Created by matsuda on 2017/06/22.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

struct User: Codable {
    let id: Int
    let login: String
    let url: String
}
