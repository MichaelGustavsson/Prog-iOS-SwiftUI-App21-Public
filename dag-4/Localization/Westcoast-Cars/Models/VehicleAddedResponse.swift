//
//  VehicleAddedResponse.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-17.
//

import Foundation

struct VehicleAddedResponse: Codable {
    let id: String
    let registrationNumber: String
    let model: String
    let color: String
    let modelYear: Int
    let mileage: Int
    let fuelType: String
    let gearType: String
    let doors: Int
    let gears: Int
    let seats: Int
    let wheelSets: Int
    let engineHk: String?
    let imported: Bool
    let value: Int
    let imageUrl: String?
    let description: String?
    let manufacturorId: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case registrationNumber = "registrationNumber"
        case model = "model"
        case color = "color"
        case modelYear = "modelYear"
        case mileage = "mileage"
        case fuelType = "fuelType"
        case gearType = "gearType"
        case doors = "numberOfDoors"
        case gears = "numberOfGears"
        case seats = "numberOfSeats"
        case wheelSets = "numberOfWheelSets"
        case engineHk = "enginePower"
        case imported = "isImported"
        case value = "value"
        case imageUrl = "imageUrl"
        case description = "description"
        case manufacturorId = "manufacturor"
    }
}
