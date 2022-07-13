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
    
    var animation: Namespace.ID
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    VStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .matchedGeometryEffect(id: mission.image, in: animation)
                            .frame(width: 50, height: 50)
                        VStack {
                            Text(mission.displayName)
                                .matchedGeometryEffect(id: mission.displayName, in: animation)
                                .font(.headline)
                            Text(mission.launchDate ?? "N/A")
                                .matchedGeometryEffect(id: mission.id, in: animation)
                                .font(.caption)
                        }
                        .frame(maxWidth: .infinity)
                    }    
                }
            } // LazyVGrid
        }
    }
}
