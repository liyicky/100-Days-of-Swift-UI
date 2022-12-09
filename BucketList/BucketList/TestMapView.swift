//
//  TestMapView.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/12/04.
//

import SwiftUI
import MapKit

struct TestMapView: View {
//
//    @StateObject private var vm = TestMapViewModel()
    @State var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.2046, longitude: 138.2529), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    
    
    let savePath = FileManager.documentsDirectory.appendingPathComponent("SavedPlaces")
    
    init() {
        do {
            let data = try Data(contentsOf: savePath)
            locations = try JSONDecoder().decode([Location].self, from: data)
        } catch {
            locations = []
        }
    }
    
    private(set) var locations: [Location]
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { loc in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: loc.latitude, longitude: loc.longitude)) {
                    VStack {
                        Image(systemName: "star.circle")
                            .resizable()
                            .foregroundColor(.red)
                            .frame(width: 44, height: 44)
                            .background(.white)
                            .clipShape(Circle())
                        
                        Text(loc.name)
                            .fixedSize()
                    }
                }
            }
        }
    }
}

struct TestMapView_Previews: PreviewProvider {
    static var previews: some View {
        TestMapView()
    }
}

@MainActor class TestMapViewModel: ObservableObject {
    @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.2046, longitude: 138.2529), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
}
