//
//  CarRentalModel.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 04/03/2024.
//

import Foundation

enum GearType: String, Codable {
    case Automatic = "Automatic"
    case Manual = "Manual"
}

enum FuelType: String, Codable {
    case Petrol = "Petrol"
    case Diesel = "Diesel"
    case Hybrid = "Hybrid"
    case Electric = "Electric"
}

enum CarType: String, Codable {
    case Sedan = "Sedan"
    case SUV = "SUV"
    case Racing = "Racing"
    case Truck = "Truck"
}

struct CarRentalModel: Codable {
    let data: [Car]
}

struct Car: Codable {
    let name: String
    let noOfSeats: Int
    let rating: Double
    let price: Double
    let type: CarType
    let gearType: GearType
    let fuelType: FuelType
}
