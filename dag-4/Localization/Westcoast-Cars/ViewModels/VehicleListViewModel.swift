//
//  VehicleListViewModel.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-10.
//

import Foundation

class VehicleListViewModel: ObservableObject {
      
    @Published var vehicleList: [VehicleViewModel] = [VehicleViewModel]()
    @Published var errorMessage: String = ""
    
    func getAllVehicles() {
        VehicleService.shared.getAllVehicles{result in
            switch result {
            case .success(let response):
                if let vehicles = response {
                    DispatchQueue.main.async {
                        self.vehicleList = vehicles.map(VehicleViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
                
                DispatchQueue.main.async {
                    self.errorMessage = "Hoppsan vi hittade inga bilar just nu, försök igen senare"
                }
            }
        }
    }
}

struct VehicleViewModel {
    let vehicle: Vehicle
    
    var id: String {
        return vehicle.id
    }
    
    var registrationNumber: String {
        return vehicle.registrationNumber
    }
    
    var vehicleName: String {
        return "\(vehicle.manufacturor.name) \(vehicle.model)"
    }
    
    var color: String {
        return vehicle.color
    }
    
    var modelYear: Int {
        return vehicle.modelYear
    }
    
    var mileage: Int {
        return vehicle.mileage
    }
    
    var image: String {
        return vehicle.imageUrl ?? ""
    }
    
    var manufacturor: String {
        vehicle.manufacturor.name
    }
}
