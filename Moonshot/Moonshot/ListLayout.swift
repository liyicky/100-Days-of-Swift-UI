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
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                MissionRow(mission: mission, astronauts: astronauts)
            }
        }
    }
}

struct ListLayout_Previews: PreviewProvider {
    
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        ListLayout(missions: missions, astronauts: astronauts)
    }
}

struct MissionRow: View {
    
    let mission: Mission
    let astronauts: [String: Astronaut]
    
    var body: some View {
        NavigationLink {
            MissionView(mission: mission, astronauts: astronauts)
        } label: {
            HStack(alignment: .center) {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text(mission.displayName)
                    .font(.headline)
                Text(mission.launchDate ?? "N/A")
            }
        }
    }
}

