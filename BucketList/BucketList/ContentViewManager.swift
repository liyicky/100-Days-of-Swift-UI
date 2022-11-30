//
//  ContentViewManager.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/11/29.
//

import SwiftUI

class ContentViewManager: ObservableObject {
    
    enum LoadingState {
        case loading, success, failure
    }
    
    @Published var loadingState = LoadingState.loading
    @Published var isUnlocked = false
    
}
