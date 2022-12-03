//
//  ContentView.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI
import LocalAuthentication

struct ContentView: View {
    
    @EnvironmentObject private var vm: ContentViewManager
    
    var body: some View {
        ZStack {
            if vm.isUnlocked {
                MapView()
                    .ignoresSafeArea()
            } else {
                Button("Unlock Places") {
                    vm.authenticate()
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            
            VStack {
                tmpHud
                buttonHud
            }
        }
        .sheet(item: $vm.selectedPlace) { place in
            EditView(location: place) {
                vm.update(location: $0)
            }
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
            Spacer()
            HStack {
                Spacer()
                Button {
                    vm.createLocation()
                } label: {
                    Image(systemName: "plus")
                }
                .padding()
                .background(.black.opacity(0.75))
                .foregroundColor(.white)
                .font(.title)
                .clipShape(Circle())
                .padding(.trailing)
            }
        }
    }
    
    private var tmpHud: some View {
        
        VStack {
            fileManagerTest
            
            
            if vm.loadingState == .loading {
                loadingView
            } else if vm.loadingState == .success {
                successView
            } else if vm.loadingState == .failure {
                failureView
            }
            
            if vm.isUnlocked {
                Text("Unlocked")
            } else {
                Text("Locked")
            }
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
