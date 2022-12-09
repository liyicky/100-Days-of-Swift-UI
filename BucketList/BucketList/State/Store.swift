//
//  Store.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/12/06.
//

import Foundation
import Combine

typealias BucketListStore = Store<BucketListState, BucketListAction>
class Store<State, Action>: ObservableObject {
    @Published var state: State
    private let reducer: Reducer<State, Action>
    private let queue = DispatchQueue(label: "com.liyicky.BucketList.store", qos: .userInitiated)
    
    init(initial: State, reducer: @escaping Reducer<State, Action>) {
        self.state = initial
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        queue.sync {
            self.dispatch(self.state, action)
        }
    }
    
    private func dispatch(_ currentState: State, _ action: Action) {
        let newState = reducer(currentState, action)
        state = newState
    }
}
