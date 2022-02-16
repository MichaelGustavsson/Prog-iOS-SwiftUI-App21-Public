//
//  CreateVehicleForm.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct CreateVehicleFormView: View {
    @ObservedObject private var createVehicleVM = CreateVehicleViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    var manufacturors: [ManufacturorViewModel]
    
    var isFormValid: Bool {
        createVehicleVM.manufacturor.isEmpty || createVehicleVM.gearType.isEmpty || createVehicleVM.fuelType.isEmpty || createVehicleVM.model.isEmpty || createVehicleVM.modelYear.isEmpty || createVehicleVM.color.isEmpty || createVehicleVM.mileage.isEmpty
    }
    
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
                    Picker("Välj tillverkare", selection: self.$createVehicleVM.manufacturor){
                        ForEach(manufacturors, id: \.id){ make in
                            Text(make.name).tag(make.name)
                        }
                    }.pickerStyle(.automatic)
                    
                    TextField("Ange modell", text: self.$createVehicleVM.model)
                    TextField("Ange årsmodell", text: self.$createVehicleVM.modelYear)
                    TextField("Ange antal km", text: self.$createVehicleVM.mileage)
                    TextField("Ange färg", text: self.$createVehicleVM.color)
                }
                
                Section {
                    Label{
                        Text("Drivlina")
                            .foregroundColor(.green)
                    } icon: {
                        Image(systemName: "gear")
                    }
                    Picker("Växellåda", selection: self.$createVehicleVM.gearType){
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
                    Picker("Bränsletyp", selection: self.$createVehicleVM.fuelType){
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
                            self.createVehicleVM.AddVehicle()
                            presentationMode.wrappedValue.dismiss()
                        }
                        Spacer()
                    }
                }.disabled(isFormValid)
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
