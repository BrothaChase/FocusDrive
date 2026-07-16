//
//  ContentView.swift
//  FocusDrive
//
//  Created by Chase brown on 7/15/26.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Double = 0.0
    @State var carLatitude: Double = 37.7759
    @State var carLongitude: Double = -122.4192
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
