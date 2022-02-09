//
//  Home.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct Home: View {
    
    init() {
//        UITabBar.appearance().isTranslucent = false
//        UITabBar.appearance().backgroundColor = UIColor.orange
//        UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
    }
    
    var body: some View {
        TabView {
            
            Welcome()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Start")
                }
            
            VehicleList()
                .tabItem{
                    Image(systemName: "car.2.fill")
                    Text("Våra bilar")
                }
                        
            Settings()
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
        Home()
    }
}
