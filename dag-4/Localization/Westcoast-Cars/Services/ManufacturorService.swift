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
    
    // Använda Async/Await...
    func getManufacturor(_ manufacturorName: String) async throws -> Manufacturor? {
        var foundManufacturor: Manufacturor?
        
        guard let url = URL.urlForManufacturors() else {
            throw NetworkError.badUrl
        }
        
        //Swift version 5.? sätt att hämta data asynkront med Async/Await
        let(data, response) = try await URLSession.shared.data(from: url)
        
        guard(response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        guard let manufacturors = try? JSONDecoder().decode(ManufacturorMapper.self, from: data) else {
            throw NetworkError.decodingError
        }
        
        for manufacturor in manufacturors.data {
            if manufacturor.name == manufacturorName {
                foundManufacturor = manufacturor
                break
            }
        }
        
        return foundManufacturor
    }
}
