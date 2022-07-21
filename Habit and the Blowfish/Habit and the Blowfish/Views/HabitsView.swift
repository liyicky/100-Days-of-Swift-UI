//
//  HabitsView.swift
//  Habit and the Blowfish
//
//  Created by Jason Cheladyn on 2022/07/20.
//

import SwiftUI

struct HabitsView: View {
    
    @EnvironmentObject private var vm: HabitViewModel
    
    var body: some View {
        ZStack {
            background
            VStack(alignment: .leading) {
                header
                habitCells
                Spacer()
            }
            .ignoresSafeArea(.container, edges: .top)
            .frame(maxWidth: UIScreen.main.bounds.width)
        }
        .sheet(isPresented: $vm.showCreateHabitSheet) {
            HabitCreationView()
        }
        
    }
}

struct HabitsView_Previews: PreviewProvider {
    static var previews: some View {
        HabitsView()
            .environmentObject(HabitViewModel())
    }
}

extension HabitsView {
    var header: some View {
        HStack {
            Text("Habit and the Blowfish")
                .font(.title2)
                .fontWeight(.black)
            Spacer()
            addHabitButton
        }
        .padding()
        .padding(.top)
        .background(.ultraThinMaterial)
        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
    }
    
    var addHabitButton: some View {
        Button {
            vm.showCreateHabitSheet.toggle()
        } label: {
            Image(systemName: "plus")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thinMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
    
    var background: some View {
        Image("background")
            .resizable()
            .scaledToFill()
            .offset(x: -200)
            .ignoresSafeArea()
    }
    
    var habitCells: some View {
        ScrollView {
            VStack(spacing: 5) {
                ForEach(vm.habits) { habit in
                    HabitRowView(habit: habit)
                        .padding(.horizontal, 15)
                }
            }
        }
    }
}
