//
//  ContentView.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var vm: ContentViewManager
    
    var body: some View {
        VStack {
            fileManagerTest
            
            if vm.loadingState == .loading {
                loadingView
            } else if vm.loadingState == .success {
                successView
            } else if vm.loadingState == .failure {
                failureView
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ContentViewManager())
    }
}

extension ContentView {
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
