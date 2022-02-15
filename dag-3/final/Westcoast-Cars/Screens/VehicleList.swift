//
//  VehicleList.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleList: View {
    
    @State private var displayCreateVehicle = false
    @ObservedObject private var vehicleListVM: VehicleListViewModel
    
    init() {
        vehicleListVM = VehicleListViewModel()
        vehicleListVM.getAllVehicles()
    }
    
    var body: some View {
            NavigationView {
                VehicleListView(vehicles: self.vehicleListVM.vehicles)
            }
            .accentColor(.black)
            .navigationViewStyle(.stack)
//            .onAppear()
    }
}

struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleList()
    }
}
