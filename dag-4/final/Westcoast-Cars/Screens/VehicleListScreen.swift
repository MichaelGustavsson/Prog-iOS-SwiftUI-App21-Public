//
//  VehicleList.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleListScreen: View {
    
    @ObservedObject private var vehicleListVM = VehicleListViewModel()
    
    @State private var displayCreateVehicle: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                VehicleListView(vehicles: self.vehicleListVM.vehicleList)
            }
            .onAppear{
                self.vehicleListVM.getAllVehicles()
            }
            .sheet(isPresented: $displayCreateVehicle, onDismiss: {
//                self.displayCreateVehicle = false
                print("Loading data on dismiss")
                self.vehicleListVM.getAllVehicles()
            }) {
                CreateVehicleFormView()
            }
            .navigationBarTitle("Bilar i lager")
            .navigationBarItems(trailing: Button(action: {
                self.displayCreateVehicle = true
            }){
                Image(systemName: "plus").font(.title2)
            })
        }.navigationViewStyle(.stack)
    }
}

struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleListScreen()
    }
}
