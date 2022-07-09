//
//  ContentView.swift
//  Animations
//
//  Created by Jason Cheladyn on 2022/06/28.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                NavigationLink(destination: ButtonViews()) {
                    Text("Buttons")
                }
                NavigationLink(destination: MoveTheCardView()) {
                    Text("Move the Card")
                }
                NavigationLink(destination: LettersAnimation()) {
                    Text("Letters")
                }
                NavigationLink(destination: TransitionsView()) {
                    Text("Transitions")
                }
            }
            .navigationTitle("Animations")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
