//
//  ContentView.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("WestcoastBackground")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("volvo-v90")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 4))
                .padding(.top, -90)
                .shadow(radius: 20)
                
            
            Text("Volvo")
                .font(.system(size: 50))
                .fontWeight(.semibold)
            VehicleInfo(title: "Modell:", value: "V90")
            VehicleInfo(title: "Årsmodell:", value: "2019")
            VehicleInfo(title: "Antal km", value: "50000")
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


