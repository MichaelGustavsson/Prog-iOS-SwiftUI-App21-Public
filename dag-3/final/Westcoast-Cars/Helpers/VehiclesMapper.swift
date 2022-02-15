//
//  VehiclesMapper.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import Foundation

struct VehiclesMapper: Codable {
    let success: Bool
    let count: Int
    let data: [Vehicle]
}
