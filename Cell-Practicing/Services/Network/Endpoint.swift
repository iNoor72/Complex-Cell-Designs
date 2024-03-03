//
//  Endpoint.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 03/03/2024.
//

import Foundation

protocol Endpoint {
    var baseURL: URL { get }
    var requestURL: URL { get }
    var path: String { get }
    var headers: [String: Any]? { get }
    var parameters: [String: Any]? { get }
    var method: String { get }
}

extension Endpoint {
    var baseURL: URL {
        return URL(string: APIConstants.baseURL)!
    }
    
    var requestURL: URL {
        baseURL.appendingPathComponent(path)
    }
}

