//
//  CreateVehicleViewModel.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-15.
//

import Foundation

class CreateVehicleViewModel: ObservableObject {
    @Published var manufacturor: String = ""
    @Published var model: String = ""
    @Published var color: String = ""
    @Published var modelYear: String = ""
    @Published var mileage: String = ""
    @Published var fuelType: String = ""
    @Published var gearType: String = ""
    
    
    func AddVehicle() {        
        print("Tillverkare = \(manufacturor)")
        print("Bilmodell = \(model)")
        print("Färg = \(color)")
        print("Årsmodell = \(modelYear)")
        print("Antal km = \(mileage)")
        print("Bränsletyp = \(fuelType)")
        print("Växellåda = \(gearType)")
        
        let createVehicleReq = CreateVehicleRequest(model: model, color: color, modelYear: modelYear, mileage: mileage, fuelType: fuelType, gearType: gearType)
        
        print(createVehicleReq)
        
        VehicleService.shared.addVehicle(createVehicleReq, "61e12f508a8463b2c6a8454e"){result in
            
        }
                                         
    }
}
