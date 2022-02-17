//
//  Home.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        TabView {
            
            WelcomeScreen()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Start")
                }
            
            VehicleListScreen()
                .tabItem{
                    Image(systemName: "car.2.fill")
                    Text("Våra bilar")
                }
            
            SettingsViewScreen()
                .tabItem{
                    Image(systemName: "wrench.and.screwdriver.fill")
                    Text("Inställningar")
                }
        }
        .accentColor(.blue)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
