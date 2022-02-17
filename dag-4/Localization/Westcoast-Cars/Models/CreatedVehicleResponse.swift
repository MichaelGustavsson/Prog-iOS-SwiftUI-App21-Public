//
//  CreatedVehicleResponse.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-17.
//

import Foundation

struct CreatedVehicleResponse: Codable {
    let success: Bool
    let data: VehicleAddedResponse
}
