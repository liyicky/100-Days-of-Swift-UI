//
//  State.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/12/06.
//

import Foundation
import MapKit

struct BucketListState {
    var mapRegion: MKCoordinateRegion = .init()
    var locations: [Location] = []
}
