//
//  VehicleService.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-10.
//

import Foundation

class VehicleService {
    private init(){}
    
    static let shared = VehicleService()
    
    func addVehicle(_ createVehicleReq: CreateVehicleRequest, _ manufacturorId: String, completion: @escaping(Result<Bool, NetworkError>) -> Void){
        
        guard let url = URL.urlForAddingVehicle(manufacturorId) else {
            return completion(.failure(.badUrl))
        }
        
    }
    
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
        }.resume()
    }
}
