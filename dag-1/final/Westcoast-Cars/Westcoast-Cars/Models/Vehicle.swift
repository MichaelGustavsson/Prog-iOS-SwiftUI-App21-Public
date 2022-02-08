//
//  Vehicle.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import Foundation

struct Vehicle: Identifiable {
    var id: Int
    var registrationNumber: String
    var color: String
    var make: String
    var model: String
    var modelYear: Int
    var mileage: Int
    var image: String
    var description: String
}

//struct Vehicle: Identifiable {
//    var id: Int
//    var registrationNumber: String
//    var color: String
//    var make: String
//    var model: String
//    var modelYear: Int
//    var mileage: Int
//    var image: String
//    var description: String
//}

let vehicles = [
    Vehicle(id: 1, registrationNumber: "ABC123", color: "Black", make: "Ford", model: "Shelby", modelYear: 2021, mileage: 100, image: "ford-shelby", description: ""),
    Vehicle(id: 2, registrationNumber: "DEF123", color: "Brown Gray", make: "Ford", model: "Kuga", modelYear: 2011, mileage: 119500, image: "ford-kuga", description: ""),
    Vehicle(id: 3, registrationNumber: "GHI123", color: "Gray Metallic", make: "Volvo", model: "V90", modelYear: 2017, mileage: 89500, image: "volvo-v90", description: ""),
    Vehicle(id: 4, registrationNumber: "JKL123", color: "White", make: "Volvo", model: "V40", modelYear: 2018, mileage: 69500, image: "volvo-v40", description: ""),
    Vehicle(id: 5, registrationNumber: "MNO123", color: "Darkblue Metallic", make: "Volvo", model: "V60", modelYear: 2019, mileage: 32500, image: "volvo-v60", description: "")
]
