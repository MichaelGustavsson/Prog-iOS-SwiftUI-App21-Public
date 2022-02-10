//
//  VehicleListView.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import SwiftUI

struct VehicleListView: View {
    @State private var displayCreateVehicle = false
    @Environment(\.presentationMode) var presentationMode
    
    var vehicles: [VehicleViewModel]
    
    var body: some View {
        List(vehicles, id: \.id) {
            vehicle in
            NavigationLink(destination: VehicleDetail(vehicle: vehicle)){
                VehicleCard(vehicle: vehicle)
            }
        }
        .navigationTitle("Bilar i lager")
        .navigationBarItems(trailing: Button(action: {
            displayCreateVehicle = true
        }){
            Image(systemName: "plus").font(.title2)
        }.sheet(isPresented: $displayCreateVehicle, onDismiss: {
            presentationMode.wrappedValue.dismiss()
        }){
            CreateVehicleForm()
        }
        )
    }
}

//struct VehicleListView_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleListView()
//    }
//}
