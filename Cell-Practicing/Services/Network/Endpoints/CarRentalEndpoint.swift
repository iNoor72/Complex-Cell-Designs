//
//  CarRentalEndpoint.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 04/03/2024.
//

import Foundation

enum CarRentalEndpoint {
    case cars
}

extension CarRentalEndpoint: Endpoint {
    var path: String {
        return APIConstants.Endpoints.carsPath
    }
    
    var headers: [String : Any]? {
        return nil
    }
    
    var parameters: [String : Any]? {
        return nil
    }
    
    var method: String {
        return "GET"
    }
}
