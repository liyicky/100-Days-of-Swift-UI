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
    
    @State var showSheet = false
    @State var selectedMission: Mission? = nil
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    VStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .matchedGeometryEffect(id: mission.image, in: animation)
                            .frame(width: 75, height: 75)
                        VStack {
                            Text(mission.displayName)
                                .matchedGeometryEffect(id: mission.displayName, in: animation)
                                .font(.headline)
                            Text(mission.launchDate ?? "N/A")
                                .matchedGeometryEffect(id: mission.id, in: animation)
                                .font(.caption)
                        }
                        .frame(maxWidth: .infinity)
                    } // VStack
                    .onTapGesture {
                        selectedMission = mission
                        showSheet = true
                    }
                    .sheet(isPresented: $showSheet) {
                        MissionView(mission: selectedMission ?? mission, astronauts: astronauts, animation: animation)
                    }
                }
            } // LazyVGrid
        }
    }
}
