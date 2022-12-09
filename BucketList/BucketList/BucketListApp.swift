//
//  BucketListApp.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI

@main
struct BucketListApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(
                    BucketListStore(initial: BucketListState(), reducer: bucketListReducer)
                )
        }
    }
}
