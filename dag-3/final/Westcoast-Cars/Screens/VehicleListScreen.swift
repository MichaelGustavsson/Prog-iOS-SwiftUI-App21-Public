//
//  VehicleList.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleListScreen: View {
    
    @State private var displayCreateVehicle = false
    @ObservedObject private var vehicleListVM: VehicleListViewModel
    @ObservedObject private var manufacturorListVM: ManufacturorListViewModel
    
    init() {
        vehicleListVM = VehicleListViewModel()
        manufacturorListVM = ManufacturorListViewModel()
        vehicleListVM.getAllVehicles()
        manufacturorListVM.getAllManufacturors()
    }
    
    var body: some View {
            NavigationView {
                VehicleListView(vehicles: self.vehicleListVM.vehicles, manufacturors: self.manufacturorListVM.manufacturors)
            }
            .accentColor(.black)
            .navigationViewStyle(.stack)
//            .onAppear()
    }
}

struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleListScreen()
    }
}
