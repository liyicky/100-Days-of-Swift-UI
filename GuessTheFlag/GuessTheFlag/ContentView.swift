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
    
    let labels = [
        "Estonia": "Flag with three horizontal stripes of equal size. Top stripe blue, middle stripe black, bottom stripe white",
        "France": "Flag with three vertical stripes of equal size. Left stripe blue, middle stripe white, right stripe red",
        "Germany": "Flag with three horizontal stripes of equal size. Top stripe black, middle stripe red, bottom stripe gold",
        "Ireland": "Flag with three vertical stripes of equal size. Left stripe green, middle stripe white, right stripe orange",
        "Italy": "Flag with three vertical stripes of equal size. Left stripe green, middle stripe white, right stripe red",
        "Nigeria": "Flag with three vertical stripes of equal size. Left stripe green, middle stripe white, right stripe green",
        "Poland": "Flag with two horizontal stripes of equal size. Top stripe white, bottom stripe red",
        "Russia": "Flag with three horizontal stripes of equal size. Top stripe white, middle stripe blue, bottom stripe red",
        "Spain": "Flag with three horizontal stripes. Top thin stripe red, middle thick stripe gold with a crest on the left, bottom thin stripe red",
        "UK": "Flag with overlapping red and white crosses, both straight and diagonally, on a blue background",
        "US": "Flag with red and white stripes of equal size, with white stars on a blue background in the top-left corner"
    ]

    var body: some View {
        ZStack {
            background
            if level > 7 { looseScreen } else { gameScreen }
        }
    }
}

// MARK: - FUNCTIONS
extension ContentView {
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
        withAnimation {
            //
        }
    }
    
    func restart() {
        level = 1
        score = 0
    }
}

// MARK: - VIEWS
extension ContentView {
    private var background: some View {
        LinearGradient(gradient: Gradient(colors: [.black, .pink.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
    
    private var looseScreen: some View {
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
    }
    private var gameScreen: some View {
        VStack {
            Text("Tap the flag of")
                .font(.subheadline.weight(.heavy))
            Text(countries[correctAnswer])
                .font(.largeTitle.weight(.semibold))
            
            ZStack {
                
                gameBackground
                flagsView
                
            }
            .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
            .padding()
            .alert(scoreTitle, isPresented: $showingScore) {
                Button("Play Again") { askQuestion() }
            }
            
            Spacer()
        }
    }
    
    private var gameBackground: some View {
        RadialGradient(stops: [
            .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
            .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
        ], center: .top, startRadius: 0, endRadius: 400)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 10)
    }
    
    private var flagsView: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(0..<3) { number in
                Button {
                    flagTapped(number)
                    playAni = true
                } label: {
                    flag(number)                }
            }
        }
        .padding()
    }
    
    private func flag(_ number: Int) -> some View {
        Image(countries[number])
            .renderingMode(.original)
            .resizable()
            .fixedSize(horizontal: false, vertical: true)
            .clipShape(Capsule())
            .shadow(radius: 5)
            .rotation3DEffect(.degrees(playAni ? 360 : 0), axis: (x: 0, y: 1, z: 0))
            .animation(.easeInOut, value: playAni)
            .accessibilityLabel(labels[countries[number], default: "Unknown flag"])
    }
    
    private func winningFlag(_ number: Int) -> some View {
        Image(countries[number])
            .renderingMode(.original)
            .resizable()
            .fixedSize(horizontal: false, vertical: true)
            .clipShape(Capsule())
            .shadow(radius: 5)
            .rotation3DEffect(.degrees(playAni ? 360 : 0), axis: (x: 0, y: 1, z: 0))
            .animation(.easeInOut, value: playAni)
            .accessibilityLabel(labels[countries[number], default: "Unknown flag"])

    }
    
    private func loosingFlag(_ number: Int) -> some View {
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
            .accessibilityLabel(labels[countries[number], default: "Unknown flag"])

    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
