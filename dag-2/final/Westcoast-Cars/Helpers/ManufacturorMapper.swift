//
//  ManufacturorMapper.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import Foundation

struct ManufacturorMapper: Codable {
    let success: Bool
    let count: Int
    let data: [Manufacturor]
}
