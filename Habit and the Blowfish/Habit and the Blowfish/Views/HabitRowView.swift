//
//  HabitRowView.swift
//  Habit and the Blowfish
//
//  Created by Jason Cheladyn on 2022/07/20.
//

import SwiftUI

struct HabitRowView: View {
    
    @EnvironmentObject private var vm: HabitViewModel
    
    let habit: Habit
    
    @State private var count = 0
    
    var body: some View {
        HStack {
            label
            Spacer()
            stepper
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(
            .ultraThinMaterial
        )
        .cornerRadius(10)
        .onAppear {
            count = habit.count
        }
    }
}

struct HabitRowView_Previews: PreviewProvider {
    static var previews: some View {
        HabitRowView(habit: Habit(name: "Jazzercise", symbol: "music.note", lastDate: Date.now, count: 0))
            .previewLayout(.sizeThatFits)
    }
}

extension HabitRowView {
    var label: some View {
        HStack {
            Image(systemName: habit.symbol)
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            Text(habit.name)
        }
    }
    
    var stepper: some View {
        HStack {
            Stepper("", onIncrement: {
                vm.updateCountFor(habit: habit, count: habit.count + 1)
            }, onDecrement: {
                vm.updateCountFor(habit: habit, count: habit.count - 1)
            })
            Text(String(count))
            Spacer()
        }
        .frame(width: 120)
    }
}
