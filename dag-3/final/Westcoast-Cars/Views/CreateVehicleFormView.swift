//
//  CreateVehicleForm.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct CreateVehicleFormView: View {
    @State var selectedManufacturor = ""
    @State var vehicleModel = ""
    @State var vehicleModelYear = ""
    @State var mileage = ""
    @State var color = ""
    @State var selectedGearType = ""
    @State var selectedFuelType = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var manufacturors: [ManufacturorViewModel]
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Label {
                        Text("Basinformation")
                            .foregroundColor(.green)
                    } icon: {
                        Image(systemName: "car")
                    }
                    Picker("Välj tillverkare", selection: $selectedManufacturor){
                        ForEach(manufacturors, id: \.id){ make in
                            Text(make.name).tag(make.name)
                        }
                    }.pickerStyle(.automatic)
                    
                    TextField("Ange modell", text: $vehicleModel)
                    TextField("Ange årsmodell", text: $vehicleModelYear)
                    TextField("Ange antal km", text: $mileage)
                    TextField("Ange färg", text: $color)
                }
                
                Section {
                    Label{
                        Text("Drivlina")
                            .foregroundColor(.green)
                    } icon: {
                        Image(systemName: "gear")
                    }
                    Picker("Växellåda", selection: $selectedGearType){
                        Text("Manuell").tag("manual")
                        Text("Automat").tag("automatic")
                        Text("Steptronic").tag("steptronic")
                    }
                }
                
                Section {
                    Label {
                        Text("Bränsle").foregroundColor(.green)
                    } icon: {
                        Image(systemName: "fuelpump")
                    }
                    Picker("Bränsletyp", selection: $selectedFuelType){
                        Text("Bensin").tag("Bensin")
                        Text("Diesel").tag("Diesel")
                        Text("Hybrid").tag("Hybrid")
                        Text("El").tag("El")
                    }
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button("Spara"){
                            presentationMode.wrappedValue.dismiss()
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Lägg till ny bil")
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Avbryt")
            })
        }
    }
}

//struct CreateVehicleForm_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateVehicleForm()
//    }
//}
