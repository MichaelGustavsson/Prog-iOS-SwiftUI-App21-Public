//
//  VehicleInfo.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleInfo: View {
    var title: String = ""
    var value: String = ""
    var body: some View {
        HStack(alignment: .center){
            Text(title)
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding(.leading, 30)
            
            Text(value)
                .font(.system(size: 30)).fontWeight(.light)
                .padding(.trailing, 30)
            Spacer()
        }
    }
}

struct VehicleInfo_Previews: PreviewProvider {
    static var previews: some View {
        VehicleInfo(title: "Modell:", value: "V90")
            .previewLayout(.fixed(width: 500, height: 150))
    }
}
