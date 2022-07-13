//
//  ContentView.swift
//  Moonshot
//
//  Created by Jason Cheladyn on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    
    @State private var gridLayoutToggle: Bool = true
        
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Button("Toggle") { withAnimation { gridLayoutToggle.toggle()} }
            Group {
                
                if gridLayoutToggle {
                    GridLayout(missions: missions, astronauts: astronauts, animation: animation)
                } else {
                    ListLayout(missions: missions, astronauts: astronauts, animation: animation)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
