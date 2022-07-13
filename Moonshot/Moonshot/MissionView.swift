//
//  MissionView.swift
//  Moonshot
//
//  Created by Jason Cheladyn on 2022/07/12.
//

import SwiftUI

struct MissionView: View {
    
//    @EnvironmentObject private var globals: GlobalVars
    
    let mission: Mission
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    let crew: [CrewMember]
    
    var animation: Namespace.ID
    
    init(mission: Mission, astronauts: [String: Astronaut], animation: Namespace.ID) {
        self.mission = mission
        
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
        
        self.animation = animation
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Text(mission.launchDate ?? "N/A")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .matchedGeometryEffect(id: mission.image, in: animation)
                        .frame(width: geometry.size.width * 0.6)
                        .padding()
                        .background(
                            Color.white.opacity(0.1)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .frame(width: geometry.size.width * 0.7)
                        )
                        .padding(.vertical)
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                        .foregroundColor(.white)
                    VStack(alignment: .leading) {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(crew, id: \.role) { crewMember in
                                    NavigationLink {
                                        AstronautView(astronaut: crewMember.astronaut)
                                    } label: {
                                        HStack {
                                            if crewMember.role == "Commander" {
                                                Image(crewMember.astronaut.id)
                                                    .resizable()
                                                    .frame(width: 104, height: 72)
                                                    .clipShape(Triangle())
                                                    .overlay(
                                                        Triangle()
                                                            .strokeBorder(.white, lineWidth: 3)
                                                    )
                                                
                                            } else {
                                                Image(crewMember.astronaut.id)
                                                    .resizable()
                                                    .frame(width: 104, height: 72)
                                                    .clipShape(Capsule())
                                                    .overlay(
                                                        Capsule()
                                                            .strokeBorder(.white, lineWidth: 1)
                                                    )

                                            }
                                            VStack(alignment: .leading) {
                                                Text(crewMember.astronaut.name)
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                                Text(crewMember.role)
                                                    .foregroundColor(.white.opacity(0.7))
                                            }
                                        }
                                        .padding(.horizontal)
                                    }
                                }
                            }
                        }
                        
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
    }
}
