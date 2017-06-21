//
//  Response+Helper.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/21.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

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
