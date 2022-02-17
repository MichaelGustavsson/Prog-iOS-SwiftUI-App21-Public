//
//  VehicleMapper.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-10.
//

import Foundation

struct VehicleMapper: Codable {
    let success: Bool
    let count: Int
    let data: [Vehicle]
}
