//
//  ContentView.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleDetail: View {
    var vehicle: Vehicle
    
    var body: some View {
        VStack{
            Image("WestcoastBackground")
                .resizable()
                .aspectRatio(contentMode: .fit)
            UrlImage(url: vehicle.imageUrl!)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -90)
                .padding(.bottom, -70)
                .shadow(radius: 20)
            
            
            Text("Tillverkare är \(vehicle.manufacturor.name)")
                .font(.system(size: 60))
                .fontWeight(.semibold)
                .lineLimit(1)
                .minimumScaleFactor(0.4)
                .padding()
            VehicleInfo(title: "Modell:", value: "\(vehicle.model)")
            VehicleInfo(title: "Årsmodell:", value: "\(vehicle.modelYear)")
            VehicleInfo(title: "Antal km", value: "\(vehicle.mileage)")
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct VehicleDetail_Previews: PreviewProvider {

    static var previews: some View {
        VehicleDetail(vehicle: vehicles[0])
    }
}


