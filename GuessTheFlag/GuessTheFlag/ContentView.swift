//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jason Cheladyn on 2022/06/16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var level = 1
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var isAlerting = false
    @State private var score = 0
    @State private var playAni = false

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .pink.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            if level > 7 {
                VStack {
                    Text("Game Over")
                        .font(.title)
                    Text("Score: \(score)/\(level)")
                        .font(.title2)
                    
                    Button {
                        restart()
                    } label: {
                        Text("Play Again")
                    }
                    
                }
            } else {
                VStack {
                    Text("Tap the flag of")
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .font(.largeTitle.weight(.semibold))
                    
                    ZStack {
                        RadialGradient(stops: [
                            .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                            .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
                        ], center: .top, startRadius: 0, endRadius: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 10)
                        
                        
                        HStack(alignment: .center, spacing: 5) {
                            ForEach(0..<3) { number in
                                Button {
                                    flagTapped(number)
                                    playAni = true
                                } label: {
                                    if countries[correctAnswer] == countries[number] {
                                        Image(countries[number])
                                            .renderingMode(.original)
                                            .resizable()
                                            .fixedSize(horizontal: false, vertical: true)
                                            .clipShape(Capsule())
                                            .shadow(radius: 5)
                                            .rotation3DEffect(.degrees(playAni ? 360 : 0), axis: (x: 0, y: 1, z: 0))
                                            .animation(.easeInOut, value: playAni)
                                    } else {
                                        Image(countries[number])
                                            .renderingMode(.original)
                                            .resizable()
                                            .fixedSize(horizontal: false, vertical: true)
                                            .clipShape(Capsule())
                                            .shadow(radius: 5)
                                            .opacity(playAni ? 0.25 : 1)
                                            .animation(.easeInOut, value: playAni)
                                            .rotationEffect(.degrees(playAni ? 10 : 0))
                                            .animation(.interpolatingSpring(stiffness: 1000, damping: 10), value: playAni)
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                    .padding()
                    .alert(scoreTitle, isPresented: $showingScore) {
                        Button("Play Again") { askQuestion() }
                    }
                }
            }
        }
    }
    
    func flagTapped(_ number: Int) {
        level += 1
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! You selected \(countries[number])"
        }

        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        playAni = false
    }
    
    func restart() {
        level = 1
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
