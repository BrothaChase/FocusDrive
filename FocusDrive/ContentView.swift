//
//  ContentView.swift
//  FocusDrive
//
//  Created by Chase brown on 7/15/26.
//

import SwiftUI
import MapKit


struct MapIconButton: View {
    let systemName: String
    
    // placeholder for logic when a button is pressed
    let action : () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .padding(10)
                .background(.ultraThinMaterial)
                .clipShape(Circle())
        }
    }
}

struct ContentView: View {
    @State var progress: Double = 0.0
    @State var carLatitude: Double = 37.7759
    @State var carLongitude: Double = -122.4192
    @State private var isPaused = false
    @StateObject private var routeManager = RouteManager()
   
    // add camera position
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7759, longitude: -122.4192),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))
    

    var body: some View {
        ZStack {
            Map(position: $cameraPosition)
            
          VStack {
              VStack {
                  
                  // Display live coordinates
                    Text("**Position**:\(carLatitude)")
                    Text("**Position**:\(carLongitude)")
                    Text("**Progress**: \(progress)")
                     
              }
              .padding()
              .background(.ultraThinMaterial)
              .clipShape(RoundedRectangle(cornerRadius:100))
             
              Spacer() // push text towards top
              
            }
            
            // left buttons
            VStack {
                MapIconButton(systemName: "pause.fill") {
                    print("Paused Trip")
                }
              
                
                MapIconButton(systemName: "car.fill") {
                    print("Clicked Button")
                }
               
    
                MapIconButton(systemName: "rectangle.landscape.rotate") {
                    print("Rotated Orientation")
                }
                

            }
            .buttonStyle(.plain)
            .font(.system(size: 15, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(10)
            
           
           
            VStack {
                MapIconButton(systemName: "point.topleft.down.to.point.bottomright.filled.curvepath") {
                    print("Showing Route")
                }
                
                MapIconButton(systemName: "location.north.line.fill") {
                    print("Showing Route")
                }
                
                MapIconButton(systemName: "map.fill") {
                    print("Showing Route")
                }
                
                MapIconButton(systemName: "steeringwheel") {
                    print("Showing Route")
                }
                
              }
            .buttonStyle(.plain)
            .font(.system(size: 15, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(10)
          
        }
        
    }
}

#Preview {
    ContentView()
}

