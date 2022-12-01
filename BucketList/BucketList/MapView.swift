//
//  MapView.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/30.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @EnvironmentObject private var vm: ContentViewManager
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations) { loc in
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
                    .onTapGesture {
                        vm.selectedPlace = loc
                    }
                }
            }
                .ignoresSafeArea()
            Circle()
                .fill(.blue)
                .opacity(0.3)
                .frame(width: 32, height: 32)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
