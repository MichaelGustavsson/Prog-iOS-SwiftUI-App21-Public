//
//  ManufacturorListViewModel.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-15.
//

import Foundation

class ManufacturorListViewModel: ObservableObject {
    @Published var manufacturors: [ManufacturorViewModel] = [ManufacturorViewModel]()
    
    func getAllManufacturors() {
        ManufacturorService.shared.getAllManufacturors{ result in
            switch result {
            case .success(let response):
                if let manufacturors = response {
                    DispatchQueue.main.async {
                        self.manufacturors = manufacturors.map(ManufacturorViewModel.init)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct ManufacturorViewModel {
    let manufacturor: Manufacturor
    
    var id: String{
        return manufacturor.id
    }
    
    var name: String{
        return manufacturor.name
    }
}
