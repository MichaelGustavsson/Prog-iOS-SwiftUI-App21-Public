//
//  VehicleList.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleList: View {
    //Detta är databindning i SwiftUI
    @State var displayCreateVehicle = false    
    
    var body: some View {
        NavigationView {
            List(vehicles){
                vehicle in
                NavigationLink(destination: VehicleDetail(vehicle: vehicle)){
                    VehicleListRow(vehicle: vehicle)
                }
            }.navigationBarTitle("Våra bilar i lager")
                .navigationBarItems(trailing: Button(action: {
                    displayCreateVehicle = true
                }){
                    Text("Lägg till bil")
                })
                .sheet(isPresented: $displayCreateVehicle, content: {
                    CreateVehicleForm()
                })
        }.navigationViewStyle(.stack)
        
        /* Steg 1.
         List(vehicles){
         vehicle in
         VehicleListRow(vehicle: vehicle)
         }
         */
        
        /*
         NavigationView {
         List(vehicles){
         vehicle in
         VehicleListRow(vehicle: vehicle)
         }.navigationBarTitle("Bilar i lager")
         }
         */
    }
}

struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleList()
    }
}
