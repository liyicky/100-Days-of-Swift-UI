//
//  Reducer.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/12/06.
//

import Foundation
import MapKit

typealias Reducer<State, Action> = (State, Action) -> State
let bucketListReducer: Reducer<BucketListState, BucketListAction> = { state, action in
    var mutatingState = state
    switch action {
    case .appStart:
        mutatingState.mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.2046, longitude: 138.2529), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
        mutatingState.locations = [.init(id: UUID(), name: "Place A", description: "Something", latitude: 36.21, longitude: 138.24)]
    case .addLocation:
        print("Add Location")
    }
    
    return mutatingState
}
