//
//  HabitCreationView.swift
//  Habit and the Blowfish
//
//  Created by Jason Cheladyn on 2022/07/20.
//

import SwiftUI

struct HabitCreationView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject private var vm: HabitViewModel
    
    @State private var name: String = ""
    @State private var selectedImage: String = ""
    
    let layout = [
        GridItem(.adaptive(minimum: 25))
    ]
    
    var body: some View {
        VStack {
            header
            form
            createButton
                .padding()
        }
        .ignoresSafeArea(.container, edges: .top)
        .background(.ultraThinMaterial)
    }
}

struct HabitCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HabitCreationView()
    }
}

extension HabitCreationView {
    var header: some View {
        ZStack {
            Image("blowfish")
                .resizable()
                .scaledToFit()
            HStack {
                
                Text("New Habit")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                
                Spacer()
            }
            .padding()
        }
        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
    }
    
    var form: some View {
        Form {
            TextField("Habit Name", text: $name)
            HStack {
                Text("Habit Image")
                    .foregroundColor(.gray.opacity(0.7))
                Image(systemName: selectedImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
            }
            
            Section {
                ScrollView {
                    LazyVGrid(columns: layout) {
                        ForEach(Habit.Symbols, id: \.self) { symbol in
                            Image(systemName: symbol)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .onTapGesture {
                                    selectedImage = symbol
                                }
                        }
                    }
                }
            }
            .frame(height: 250)
            .padding()
        }
    }
    
    var createButton: some View {
        Button {
            let habit = Habit(name: name, symbol: selectedImage, lastDate: Date.now, count: 0)
            vm.habits.append(habit)
            dismiss()
        } label: {
            Text("Create")
                .frame(maxWidth: .infinity)
                .frame(height: 25)
        }
        .buttonStyle(.borderedProminent)
    }
}
