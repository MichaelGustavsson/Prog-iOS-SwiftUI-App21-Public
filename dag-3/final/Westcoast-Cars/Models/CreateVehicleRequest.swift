//
//  CreateVehicleRequest.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-15.
//

import Foundation

struct CreateVehicleRequest: Codable {
    let model: String
    let color: String
    let modelYear: String
    let mileage: String
    let fuelType: String
    let gearType: String
}
