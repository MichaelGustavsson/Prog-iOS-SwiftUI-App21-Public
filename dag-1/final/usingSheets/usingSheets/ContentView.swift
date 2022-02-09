//
//  ContentView.swift
//  usingSheets
//
//  Created by Michael Gustavsson on 2022-02-08.
//

import SwiftUI

struct DismissingView1: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Dismiss Me") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingDetail = false

    var body: some View {
        Button("Show Detail") {
            showingDetail = true
        }
        .sheet(isPresented: $showingDetail) {
            DismissingView1()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
