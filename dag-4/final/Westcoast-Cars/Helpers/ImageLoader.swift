//
//  ImageLoader.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import Foundation
import SwiftUI
import UIKit

class ImageLoader: ObservableObject {
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        guard let imageUrl = URL(string: url) else{
            return
        }
        
        URLSession.shared.dataTask(with: imageUrl){ (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }.resume()
    }
}
