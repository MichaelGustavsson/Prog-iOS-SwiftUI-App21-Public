//
//  VehicleService.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-10.
//

import Foundation

class VehicleService: ObservableObject {
    
    //Se till att det inte går att skapa en instans av vår VehicleService.
    private init(){}
    
    //Skapa en singelton hantering av vår VehicleService.
    static let shared = VehicleService()
    
    // @escaping = skapar en Closure
    // Result<Success, Failure>
    // Result = Succes, vad skall vi returnera
    // Result = Failure, vad gick fel!
    func getAllVehicles(completion: @escaping (Result<[Vehicle]?, NetworkError>) -> Void) {
        
        guard let url = URL.urlForVehicles() else {
            return completion(.failure(.badUrl))
        }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            do{
                let vehicles = try JSONDecoder().decode(VehicleMapper.self, from: data)
                completion(.success(vehicles.data))
            }catch{
                print(error)
                completion(.failure(.decodingError))
            }
            
//            if let vehicles = try? JSONDecoder().decode(VehicleMapper.self, from: data) {
//                completion(.success(vehicles.data))
//            } else {
//                completion(.failure(.decodingError))
//            }
            
        }.resume()
    }
}
