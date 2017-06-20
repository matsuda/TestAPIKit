//
//  Session.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/20.
//  Copyright © 2017年 Galapagos. All rights reserved.
//

import Foundation
import APIKit

enum API {
    static var Session: APIKit.Session = {
        let config = URLSessionConfiguration.default
        config.protocolClasses = [MockURLProtocol.self]
        let adapter = URLSessionAdapter(configuration: config)
        return APIKit.Session(adapter: adapter)
    }()
}

let Session = API.Session