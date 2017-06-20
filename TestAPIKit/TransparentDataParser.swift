//
//  TransparentDataParser.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/20.
//  Copyright © 2017年 Galapagos. All rights reserved.
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
