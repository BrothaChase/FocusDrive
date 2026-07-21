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
            VStack {
                Image(systemName: "pause.fill").padding(10).background(.ultraThinMaterial).clipShape(Circle())
                Image(systemName: "car.fill").padding(10).background(.ultraThinMaterial).clipShape(Circle())
                Image(systemName: "rectangle.landscape.rotate").padding(10).background(.ultraThinMaterial).clipShape(Circle())
            }
            .font(.system(size: 15, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(10)
            
           
           
            VStack {
                Image(systemName: "point.topleft.down.to.point.bottomright.filled.curvepath").padding(10).background(.ultraThinMaterial).clipShape(Circle())
                Image(systemName: "location.north.line.fill").padding(10).background(.ultraThinMaterial).clipShape(Circle())
                Image(systemName: "map.fill").padding(10).background(.ultraThinMaterial).clipShape(Circle())
                Image(systemName: "steeringwheel").padding(10).background(.ultraThinMaterial).clipShape(Circle())
               
            }
            .font(.system(size: 15, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .trailing)
          .padding(10)
          
        }
        
    }
}

#Preview {
    ContentView()
}

