//
//  TrivagoModel.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 03/03/2024.
//

import Foundation

enum PropertyType: String, Codable {
    case hotel = "hotel"
    case apartment = "apartment"
}

struct TrivagoModel: Codable {
    let data: [Hotel]
}

// MARK: - Datum
struct Hotel: Codable {
    let name: String
    let rating: Double
    let noOfRatings, price, stars: Int
    let isPopular: Bool
    let type: PropertyType
}
