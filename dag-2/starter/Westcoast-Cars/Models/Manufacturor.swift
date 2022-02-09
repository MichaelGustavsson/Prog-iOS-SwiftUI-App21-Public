//
//  Manufacturor.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import Foundation

struct Manufacturor: Identifiable {
    let id: String
    let name: String
    let logoImage: String?
}

let manufacturors = [
    Manufacturor(id: "61e12bfb8a8463b2c6a8454c",
                 name: "Volvo",
                 logoImage: "volvo"),
    Manufacturor(id: "61e12f508a8463b2c6a8454e",
                 name: "Ford",
                 logoImage: "ford")
]
