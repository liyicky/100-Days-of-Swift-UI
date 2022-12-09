//
//  Store.swift
//  VoiceOver
//
//  Created by Jason Cheladyn on 2022/12/06.
//

import Foundation

// MARK: - State

struct VoiceOverState {
    var selectedPicture: Int = 0
    var score: Int = 0
}

// MARK: - Store
typealias VoiceOverStore = Store<VoiceOverState, VoiceOverAction>
class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    private let reducer: Reducer<State, Action>
    private let queue = DispatchQueue(label: "com.liyicky.VoiceOver.store", qos: .userInitiated)
    
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

// MARK: - Reducer
typealias Reducer<State, Action> = (State, Action) -> State
let voiceOverReducer: Reducer<VoiceOverState, VoiceOverAction> = { state, action in
    var mutatingState = state
    switch action {
    case .start:
        mutatingState.selectedPicture = Int.random(in: 0...3)
    case .randomizePicture:
        mutatingState.selectedPicture = Int.random(in: 0...3)
    case .increamentScore:
        mutatingState.score += 1
    case .decrementScore:
        mutatingState.score -= 1
    }
    return mutatingState
}

// MARK: - Actions
enum VoiceOverAction {
    case start
    case randomizePicture
    case increamentScore
    case decrementScore
}
