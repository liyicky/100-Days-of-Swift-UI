//
//  ApiManager.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import SwiftUI

class ApiManager {
    
    static let REQUEST_URL = "https://www.hackingwithswift.com/samples/friendface.json"
    
    static func fetchData() async -> Data {
        guard let url = URL(string: ApiManager.REQUEST_URL) else {
            print("Invalid URL")
            fatalError("Couldn't fetch data")
        }
        
        do {
            print("Data fetched!")
            let (data, _) = try await URLSession.shared.data(from: url)
            return data
            
        } catch {
            print("Invalid Data")
            fatalError("Couldn't fetch data")
        }
    }
}
