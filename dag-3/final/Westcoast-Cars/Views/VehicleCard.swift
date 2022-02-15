//
//  VehicleCard.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import SwiftUI

struct VehicleCard: View {
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
//                Text(vehicle.manufacturor).font(.title2).fontWeight(.semibold)
                Text(vehicle.vehicleName)
                Text(String(vehicle.modelYear))
            }.font(.title2).foregroundColor(.white).padding(5)
        }.background(Color.orange)
            .shadow(color: .black, radius: 10)
            .padding()
            
    }
}

//struct VehicleCard_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleCard(vehicle: vehicles[0])
////            .previewLayout(.sizeThatFits)
//    }
//}
