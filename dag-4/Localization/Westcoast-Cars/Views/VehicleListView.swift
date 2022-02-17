//
//  VehicleListView.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import SwiftUI

struct VehicleListView: View {
    var vehicles: [VehicleViewModel]
    
    var body: some View {
        List(vehicles, id: \.id) {
            vehicle in
            NavigationLink(destination: VehicleDetailView(vehicle: vehicle)){
                VehicleCardView(vehicle: vehicle)
            }
        }
    }
}

struct VehicleListView_Previews: PreviewProvider {
    static var previews: some View {
        let vehicle = Vehicle(id: "1111111", registrationNumber: "ABC123", model: "XC90", color: "Grön", modelYear: 2018, mileage: 250000, fuelType: "Bensin", gearType: "Manuell", doors: 5, gears: 6, seats: 5, wheelSets: 2, engineHk: "250", imported: false, value: 0, imageUrl: "placeholder", description: "", manufacturor: Manufacturor(id: "333333333", name: "Volvo"))
        
        let vehicleVM = VehicleViewModel(vehicle: vehicle)
        
        VehicleListView(vehicles: [vehicleVM])
    }
}
