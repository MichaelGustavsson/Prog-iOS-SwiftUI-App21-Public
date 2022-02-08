//
//  VehicleListRow.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleListRow: View {
    var vehicle: Vehicle
    
    var body: some View {
        HStack {
            Image(vehicle.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Rectangle())
                .cornerRadius(10)
                .shadow(color: .black, radius: 10)
                .padding()
            Text(vehicle.make)
                .font(.title2)
            Spacer()
            Text(vehicle.model)
                .font(.body)
        }
    }
}

struct VehicleListRow_Previews: PreviewProvider {
    static var previews: some View {
        VehicleListRow(vehicle: vehicles[0])
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
