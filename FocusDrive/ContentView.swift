//
//  ContentView.swift
//  FocusDrive
//
//  Created by Chase brown on 7/15/26.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var progress: Double = 0.0
    @State var carLatitude: Double = 37.7759
    @State var carLongitude: Double = -122.4192
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7759, longitude: -122.4192),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))

    var body: some View {
        ZStack {
            Map(position: $cameraPosition)
            
          VStack {
            // Display live coordinates
              Text("Position:\(carLatitude)")
              Text("Position:\(carLongitude)")
              Text("Progress:\(progress)")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
