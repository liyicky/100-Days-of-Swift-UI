//
//  ContentView.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI
import LocalAuthentication
import MapKit

struct ContentView: View {
    
    @EnvironmentObject var store: BucketListStore
    
    var body: some View {
        map
            .onAppear {
                store.dispatch(.appStart)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ContentViewManager())
    }
}

extension ContentView {
    
    private var buttonHud: some View {
        VStack {
            HStack {
                Button {
//                    vm.createLocation()
                } label: {
                    Image(systemName: "plus")
                        .padding()
                        .background(.black.opacity(0.75))
                        .foregroundColor(.white)
                        .font(.title)
                        .clipShape(Circle())
                        .padding(.trailing)
                }
            }
        }
    }
    
    private var secondButtonHud: some View {
        VStack {
            HStack {
                Button {
//                    vm.createLocation()
                } label: {
                    Image(systemName: "plus")
                }
                .padding()
                .background(.black.opacity(0.75))
                .foregroundColor(.white)
                .font(.title)
                .clipShape(Circle())
                .padding(.leading)
            }
            
        }
    }
    
    private var tmpHud: some View {
        
        VStack {
            fileManagerTest
            
            
//            if vm.loadingState == .loading {
//                loadingView
//            } else if vm.loadingState == .success {
//                successView
//            } else if vm.loadingState == .failure {
//                failureView
//            }
//
//            if vm.isUnlocked {
//                Text("Unlocked")
//            } else {
//                Text("Locked")
//            }
        }
        .padding()
        .background(.regularMaterial)
        .padding()
    }
    
    private var fileManagerTest: some View {
        Text("Hello World")
            .onTapGesture {
                let str = "Test Message"
                let url = FileManager().getDocumentsDirectory().appendingPathComponent("message.txt")

                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
            }
    }
    
    private var map: some View {
        ZStack {
            Map(coordinateRegion: $store.state.mapRegion, annotationItems: [Location(id: UUID(), name: "Place A", description: "Something", latitude: 36.21, longitude: 138.24)]) { loc in
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
//                    .onTapGesture {
//                        vm.selectedPlace = loc
//                    }
                }
            }
            Circle()
                .fill(.blue)
                .opacity(0.3)
                .frame(width: 32, height: 32)
        }
    }
    
    private var loadingView: some View {
        VStack {
            Text("Loading...")
        }
    }
    
    private var successView: some View {
        VStack {
            Text("Success.")
        }
    }
    
    private var failureView: some View {
        VStack {
            Text("Failure.")
        }
    }
}
