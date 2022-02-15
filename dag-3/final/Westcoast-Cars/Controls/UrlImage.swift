//
//  UrlImageLoader.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import SwiftUI

struct UrlImage: View {
    
    let url: String
    let placeHolder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeHolder: String = "placeholder") {
        self.url = url
        self.placeHolder = placeHolder
        self.imageLoader.downloadImage(url: self.url)
    }
    var body: some View {
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        }else {
            return Image("placeholder").resizable()
        }
    }
}

struct UrlImageLoader_Previews: PreviewProvider {
    static var previews: some View {
        UrlImage(url: "https://i.postimg.cc/nVYKG8qj/no-car.png")
    }
}
