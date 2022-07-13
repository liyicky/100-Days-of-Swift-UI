//
//  Mission.swift
//  Moonshot
//
//  Created by Jason Cheladyn on 2022/07/11.
//

import Foundation

struct Mission: Identifiable, Codable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }
}
