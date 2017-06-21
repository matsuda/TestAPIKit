//
//  TransparentDataParser.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/20.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

class TransparentDataParser: DataParser {
    var contentType: String? {
        return "application/json"
    }

    func parse(data: Data) throws -> Any {
        return data
    }
}
