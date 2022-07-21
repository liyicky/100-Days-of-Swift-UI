//
//  HabitViewModel.swift
//  Habit and the Blowfish
//
//  Created by Jason Cheladyn on 2022/07/20.
//

import Foundation

class HabitViewModel: ObservableObject {
    
    @Published var habits = [Habit]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(habits) {
                print("foo")
                UserDefaults.standard.set(encoded, forKey: "Habits")
            }
        }
    }
    
    @Published var showCreateHabitSheet: Bool = false
    
    init() {
        if let savedHabits = UserDefaults.standard.data(forKey: "Habits") {
            if let decodedItems = try? JSONDecoder().decode([Habit].self, from: savedHabits) {
                habits = decodedItems
                return
            }
        }
        habits = []
    }
    
    func updateCountFor(habit: Habit, count: Int) {
        guard let index = habits.firstIndex(where: { $0 == habit }) else {
            fatalError("Can't find a habit to update")
        }
        
        let toBeUpdatedHabit = habits[index]
        let updatedHabit = Habit(name: toBeUpdatedHabit.name, symbol: toBeUpdatedHabit.symbol, lastDate: Date.now, count: count)
        habits[index] = updatedHabit
    }
    
}
