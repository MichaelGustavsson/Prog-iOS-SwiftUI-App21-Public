//
//  UrlExtension.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-10.
//

import Foundation

extension URL {
    
    static func urlForAddingVehicle( _ manufacturorId: String) -> URL? {
        return URL(string: "\(Constants.API_URL)manufacturors/\(manufacturorId)/vehicles")
    }
    
    static func urlForVehicles() -> URL? {
        return URL(string: "\(Constants.API_URL)vehicles")
    }
    
    static func urlForVehicle() -> URL? {
        return URL(string: "")
    }
    
    static func urlForManufacturors() -> URL? {
        return URL(string: "\(Constants.API_URL)manufacturors")
    }
}
