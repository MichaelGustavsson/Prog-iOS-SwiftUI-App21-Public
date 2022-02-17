//
//  CreateVehicleViewModel.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-15.
//

import Foundation

class CreateVehicleViewModel: ObservableObject {
    @Published var registrationNumber: String = ""
    @Published var manufacturor: String = ""
    @Published var model: String = ""
    @Published var color: String = ""
    @Published var modelYear: String = ""
    @Published var mileage: String = ""
    @Published var fuelType: String = ""
    @Published var gearType: String = ""
    
    
    func AddVehicle() async {
        
        let createVehicleReq = CreateVehicleRequest(registrationNumber: registrationNumber, model: model, color: color, modelYear: modelYear, mileage: mileage, fuelType: fuelType, gearType: gearType, imageUrl: "https://i.postimg.cc/nVYKG8qj/no-car.png")
        
        do{
            
            guard let response = try await ManufacturorService.shared.getManufacturor(manufacturor) else {
                print("Det blev ett fel här, kunde inte hitta någon tilverkare med namnet \(manufacturor)")
                return
            }
            
            VehicleService.shared.addVehicle(createVehicleReq, response.id){result in
                switch result {
                case .success(let result):
                    if let vehicle = result {
                        print("Sparad \(vehicle)")
                    }
                case .failure(let error):
                    print("Fel \(error.localizedDescription)")
                }
            }
            
        }catch {
            print("Error")
        }
                                         
    }
}
