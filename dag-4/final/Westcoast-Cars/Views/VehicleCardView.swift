//
//  VehicleCard.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import SwiftUI

struct VehicleCardView: View {
    var vehicle: VehicleViewModel
    var body: some View {
        VStack {
            UrlImage(url: vehicle.image)
                .aspectRatio(contentMode: .fit)
                .overlay(Rectangle()
                            .stroke(Color.white, lineWidth: 2.0))
                .padding(.bottom, 8)
                .padding(.top, 20)
                .padding(.horizontal, 30)
            HStack{
                Text(vehicle.vehicleName)
                Text(String(vehicle.modelYear))
            }.font(.title2).foregroundColor(.white).padding(5)
        }.background(Color.orange)
            .shadow(color: .black, radius: 10)
            .padding()
            
    }
}

struct VehicleCard_Previews: PreviewProvider {
    static var previews: some View {
        let vehicle = Vehicle(id: "1111111", registrationNumber: "ABC123", model: "XC90", color: "Grön", modelYear: 2018, mileage: 250000, fuelType: "Bensin", gearType: "Manuell", doors: 5, gears: 6, seats: 5, wheelSets: 2, engineHk: "250", imported: false, value: 0, imageUrl: "placeholder", description: "", manufacturor: Manufacturor(id: "333333333", name: "Volvo"))
        
        let vehicleVM = VehicleViewModel(vehicle: vehicle)
        VehicleCardView(vehicle: vehicleVM)
            .previewLayout(.sizeThatFits)
    }
}
