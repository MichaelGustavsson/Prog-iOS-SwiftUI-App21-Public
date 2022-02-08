//
//  CreateVehicleForm.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct CreateVehicleForm: View {
    @State var manufacturor = ""
    @State var vehicleModel = ""
    @State var vehicleModelYear = ""
    var body: some View {
        Form {
            Section {
                Label {
                    Text("Tillverkare")
                        .foregroundColor(.green)
                } icon: {
                    Image(systemName: "car")
                }
                TextField("Ange tillverkare", text: $manufacturor)
                Label{
                    Text("Modell")
                        .foregroundColor(.green)
                } icon: {
                    Image(systemName: "keyboard")
                }
                TextField("Ange modell", text: $vehicleModel)
            }
            
            Section {
                Label{
                    Text("Årsmodell")
                        .foregroundColor(.green)
                } icon: {
                    Image(systemName: "key")
                }
                TextField("Ange årsmodell", text: $vehicleModelYear)
            }
        }
    }
}

struct CreateVehicleForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateVehicleForm()
    }
}
