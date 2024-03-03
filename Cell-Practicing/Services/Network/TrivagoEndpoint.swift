//
//  TrivagoEndpoint.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 03/03/2024.
//

import Foundation

enum TrivagoEndpoint {
    case hotels
}

extension TrivagoEndpoint: Endpoint {
    var path: String {
        return APIConstants.Endpoints.trivagoPath
    }
    
    var headers: [String : Any]? {
        return nil
    }
    
    var parameters: [String : Any]? {
        return nil
    }
    
    var method: String {
        return "get"
    }
}
