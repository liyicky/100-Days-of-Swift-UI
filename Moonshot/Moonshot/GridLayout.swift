//
//  GridLayout.swift
//  Moonshot
//
//  Created by Jason Cheladyn on 2022/07/13.
//

import SwiftUI

struct GridLayout: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                Text(mission.launchDate ?? "N/A")
                                    .font(.caption)
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                    
                }
            } // LazyVGrid
        }
    }
}
