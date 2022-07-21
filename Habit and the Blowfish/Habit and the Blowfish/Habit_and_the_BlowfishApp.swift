//
//  Habit_and_the_BlowfishApp.swift
//  Habit and the Blowfish
//
//  Created by Jason Cheladyn on 2022/07/20.
//

import SwiftUI

@main
struct Habit_and_the_BlowfishApp: App {
    
    @StateObject private var habitsViewModel = HabitViewModel()
    
    var body: some Scene {
        WindowGroup {
            HabitsView()
                .environmentObject(habitsViewModel)
            
        }
    }
}
