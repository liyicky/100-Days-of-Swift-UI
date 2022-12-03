//
//  ContentViewManager.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI
import MapKit
import LocalAuthentication

@MainActor class ContentViewManager: ObservableObject {
    
    enum LoadingState {
        case loading, success, failure
    }
    
    let savePath = FileManager.documentsDirectory.appendingPathComponent("SavedPlaces")
    
    init() {
        do {
            let data = try Data(contentsOf: savePath)
            locations = try JSONDecoder().decode([Location].self, from: data)
        } catch {
            locations = []
        }
    }
    
    @Published private(set) var locations: [Location]
    
    @Published var loadingState = LoadingState.loading
    @Published var isUnlocked = false
    @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.2046, longitude: 138.2529), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    @Published var selectedPlace: Location?
    
    
    func createLocation() {
        let newLocation = Location(id: UUID(), name: "New Location", description: "", latitude: mapRegion.center.latitude, longitude: mapRegion.center.longitude)
        locations.append(newLocation)
        
        save()
    }
    
    func update(location: Location) {
        guard let selectedPlace = selectedPlace else { return }
        
        if let index = locations.firstIndex(of: selectedPlace) {
            locations[index] = location
        }
        
        save()
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(locations)
            try data.write(to: savePath, options: [.atomic, .completeFileProtection])
        } catch {
            print("Unable to save data.")
        }
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Please authenticate yourself to unlock your places."

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in

                if success {
                    Task { @MainActor in
                        self.isUnlocked = true
                    }
                } else {
                    // error
                }
            }
        } else {
            // no biometrics
        }
    }
    
}
