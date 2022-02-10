//
//  Vehicle.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import Foundation

struct Vehicle: Codable, Identifiable {
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
    let manufacturor: Manufacturor
    
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
        case manufacturor = "manufacturor"
    }
}


let vehicles = [
    Vehicle(id: "61ec474979cc7e9a1ab0b723",
            registrationNumber: "XYZ334",
            model: "Kuga",
            color: "Mörkblå",
            modelYear: 2020,
            mileage: 15000,
            fuelType: "Bensin",
            gearType: "Automat",
            doors: 5,
            gears: 6,
            seats: 5,
            wheelSets: 2,
            engineHk: "150Hk",
            imported: false,
            value: 0,
            imageUrl: "https://i.postimg.cc/D08T5mrc/Ford-Kuga.jpg",
            description: "",
           manufacturor: manufacturors[1]),
    Vehicle(id: "61ec474979cc7e9a1ab0b724",
            registrationNumber: "ABC123",
            model: "XC90 T6",
            color: "Silver metallic",
            modelYear: 2011,
            mileage: 89750,
            fuelType: "Bensin",
            gearType: "Manuell",
            doors: 3,
            gears: 5,
            seats: 3,
            wheelSets: 2,
            engineHk: "125Hk",
            imported: false,
            value: 0,
            imageUrl: "https://i.postimg.cc/gcfqGQxM/volvo-XC90.jpg",
            description: "",
            manufacturor: manufacturors[0])
]
