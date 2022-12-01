//
//  ContentViewManager.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI
import MapKit

class ContentViewManager: ObservableObject {
    
    enum LoadingState {
        case loading, success, failure
    }
    
    @Published var loadingState = LoadingState.loading
    @Published var isUnlocked = false
    @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    @Published var locations = [Location]()
    @Published var selectedPlace: Location?
    
    
    func createLocation() {
        let newLocation = Location(id: UUID(), name: "New Location", description: "", latitude: mapRegion.center.latitude, longitude: mapRegion.center.longitude)
        locations.append(newLocation)
    }
    
}
