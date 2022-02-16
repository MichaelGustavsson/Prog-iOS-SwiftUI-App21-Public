//
//  ManufacturorService.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-15.
//

import Foundation

class ManufacturorService {
    private init(){}
    
    static let shared = ManufacturorService()
    
    func getAllManufacturors(completion: @escaping(Result<[Manufacturor]?, NetworkError>) -> Void){
        guard let url = URL.urlForManufacturors() else {
            return completion(.failure(.badUrl))
        }
        
        URLSession.shared.dataTask(with: url){data, response, error in
            guard let data = data, error == nil else{
                return completion(.failure(.noData))
            }
            
            if let manufacturors = try? JSONDecoder().decode(ManufacturorMapper.self, from: data){
                completion(.success(manufacturors.data))
            } else {
                print(error!)
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}
