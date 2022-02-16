//
//  VehicleInfo.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct VehicleInfoView: View {
    var title: String = ""
    var value: String = ""
    var fontSize: CGFloat = 30
    
    var body: some View {
        HStack(alignment: .center){
            Text(title)
                .font(.system(size: fontSize))
                .fontWeight(.semibold)
                .padding(.leading, 30)
            
            Text(value)
                .font(.system(size: fontSize)).fontWeight(.light)
                .padding(.trailing, 30)
            Spacer()
        }
    }
}

struct VehicleInfo_Previews: PreviewProvider {
    static var previews: some View {
        VehicleInfoView(title: "Modell:", value: "V90", fontSize: 50)
            .previewLayout(.fixed(width: 500, height: 150))
    }
}
