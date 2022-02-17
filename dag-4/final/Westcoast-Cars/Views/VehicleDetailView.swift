//
//  ContentView.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleDetailView: View {
    var vehicle: VehicleViewModel
    
    var body: some View {
        VStack{
            Image("WestcoastBackground")
                .resizable()
                .aspectRatio(contentMode: .fit)
            UrlImage(url: vehicle.image)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -90)
                .padding(.bottom, -70)
                .shadow(radius: 20)
            
            
            VehicleInfoView(value: "\(vehicle.vehicleName)", fontSize: 40).padding()
            VehicleInfoView(title: "Årsmodell:", value: "\(vehicle.modelYear)")
            VehicleInfoView(title: "Antal km", value: "\(vehicle.mileage)")
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct VehicleDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        let vehicle = Vehicle(id: "1111111", registrationNumber: "ABC123", model: "XC90", color: "Grön", modelYear: 2018, mileage: 250000, fuelType: "Bensin", gearType: "Manuell", doors: 5, gears: 6, seats: 5, wheelSets: 2, engineHk: "250", imported: false, value: 0, imageUrl: "https://i.postimg.cc/nVYKG8qj/no-car.png", description: "", manufacturor: Manufacturor(id: "333333333", name: "Volvo"))
        
        let vehicleVM = VehicleViewModel(vehicle: vehicle)
        
        VehicleDetailView(vehicle: vehicleVM)
    }
}


