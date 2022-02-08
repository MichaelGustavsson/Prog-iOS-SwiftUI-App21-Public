//
//  Welcome.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        ZStack{
            Image("create-vehicle-background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Text("Westcoast Cars")
                    .font(.system(size: 48))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                Text("Vi har bilen du söker")
                    .font(.system(size: 30))
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
