//
//  ContentView.swift
//  Moonshot
//
//  Created by Jason Cheladyn on 2022/07/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var gridLayoutToggle = true
        
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    
    
    var body: some View {
        NavigationView {
            Group {
                if gridLayoutToggle {
                    GridLayout(missions: missions, astronauts: astronauts)
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .toolbar {
                Button {
                    withAnimation {
                        gridLayoutToggle.toggle()
                    }
                } label: {
                    Text(gridLayoutToggle ? "List View" : "Grid View")
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
