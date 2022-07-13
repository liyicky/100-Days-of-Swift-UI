//
//  ListLayout.swift
//  Moonshot
//
//  Created by Jason Cheladyn on 2022/07/13.
//

import SwiftUI

struct ListLayout: View {
    
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var animation: Namespace.ID
    
    var body: some View {
        
        List {
            ForEach(missions) { mission in
                MissionRow(mission: mission, astronauts: astronauts, animation: animation)
            }
        }
    }
}

//struct ListLayout_Previews: PreviewProvider {
//
//    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
//    static let missions: [Mission] = Bundle.main.decode("missions.json")
//
//    static var previews: some View {
//        ListLayout(missions: missions, astronauts: astronauts)
//    }
//}

struct MissionRow: View {
    
    let mission: Mission
    let astronauts: [String: Astronaut]
    
    var animation: Namespace.ID
    
    var body: some View {
        HStack(alignment: .center) {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .matchedGeometryEffect(id: mission.image, in: animation)
                .frame(width: 50, height: 50)
            Text(mission.displayName)
                .matchedGeometryEffect(id: mission.displayName, in: animation)
                .font(.headline)
            Text(mission.launchDate ?? "N/A")
                .matchedGeometryEffect(id: mission.id, in: animation)
        }
    }
}

