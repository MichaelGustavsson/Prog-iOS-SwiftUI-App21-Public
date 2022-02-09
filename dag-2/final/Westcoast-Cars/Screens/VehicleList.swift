//
//  VehicleList.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleList: View {
    
    @State private var displayCreateVehicle = false
    
    var body: some View {
            NavigationView {
                VehicleListView()
            }
            .accentColor(.black)
            .navigationViewStyle(.stack)
    }
}

struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleList()
    }
}
