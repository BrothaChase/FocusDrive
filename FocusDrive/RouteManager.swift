//
//  Location.swift
//  FocusDrive
//
//  Created by Chase brown on 7/21/26.
//


import Foundation
import MapKit
import Combine

class RouteManager: ObservableObject {
    @Published var startPoint: CLLocationCoordinate2D?
    @Published var endPoint: CLLocationCoordinate2D?
    @Published var totalDistance: Double = 0.0
    
    
    func calculateRoute(startPoint: CLLocationCoordinate2D,endPoint: CLLocationCoordinate2D) {
       let startLocation = CLLocation(latitude: startPoint.latitude, longitude:startPoint.longitude)
       let endLocation = CLLocation(latitude: endPoint.latitude, longitude: endPoint.longitude)
        
       let distance = startLocation.distance(from: endLocation)
        
        totalDistance = distance
    }
    
    
}
