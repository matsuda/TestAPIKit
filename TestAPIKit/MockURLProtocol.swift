//
//  MockURLProtocol.swift
//  TestAPIKit
//
//  Created by matsuda on 2017/06/20.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import Foundation

class MockURLProtocol: URLProtocol {
    var cannedResponse: Data?
    let cannedHeaders = ["Content-Type" : "application/json;"]
    
    /// Required
    open override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    /// Required
    open override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    /// Required
    open override func startLoading() {
        print(#function)
        print("url >>>", request.url ?? "")
        guard let path = Bundle.main.path(forResource: "user", ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { [weak self] in
                guard let `self` = self else { return }
                let error = NSError(domain: "MockURLProtocolError", code: 10001, userInfo: nil)
                self.loadError(error: error)
            })
            return
        }
        cannedResponse = data
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { [weak self] in
            guard let `self` = self else { return }
            self.loadResponse()
        })
    }
    
    /// Required
    open override func stopLoading() {
        print(#function)
    }
    
    func loadResponse() {
        let client = self.client
        let response = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: "HTTP/1.1", headerFields: cannedHeaders)
        client?.urlProtocol(self, didReceive: response!, cacheStoragePolicy: .notAllowed)
        client?.urlProtocol(self, didLoad: cannedResponse!)
        client?.urlProtocolDidFinishLoading(self)
    }
    
    func loadError(error: Error) {
        let client = self.client
        let response = HTTPURLResponse(url: request.url!, statusCode: 500, httpVersion: "HTTP/1.1", headerFields: cannedHeaders)
        client?.urlProtocol(self, didReceive: response!, cacheStoragePolicy: .notAllowed)
        client?.urlProtocol(self, didFailWithError: error)
    }
}
