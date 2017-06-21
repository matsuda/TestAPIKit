//
//  Session.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/20.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation
import APIKit

let Session: APIKit.Session = {
    let config = URLSessionConfiguration.default
    config.protocolClasses = [MockURLProtocol.self]
    let adapter = URLSessionAdapter(configuration: config)
    return APIKit.Session(adapter: adapter)
}()
