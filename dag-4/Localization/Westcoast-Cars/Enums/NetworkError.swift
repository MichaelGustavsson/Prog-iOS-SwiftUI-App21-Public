//
//  NetworkError.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-10.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case decodingError
    case noData
    case badResponse
}
