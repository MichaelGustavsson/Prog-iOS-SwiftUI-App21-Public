//
//  Settings.swift
//  Westcoast-Cars
//
//  Created by Michael Gustavsson on 2022-02-09.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        Image("ford-shelby")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea(edges: .top)
            .ignoresSafeArea(edges: .horizontal)
        
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
