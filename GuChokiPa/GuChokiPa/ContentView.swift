//
//  ContentView.swift
//  GuChokiPa
//
//  Created by Jason Cheladyn on 2022/06/20.
//

import SwiftUI

class ViewManager: ObservableObject {
    let images = ["rock", "paper", "scissors"]
    @Published var imageIndex = 0
    @Published var currentImage = "rock"
    @Published var gameRunning = false
    @Published var selectedAnswer = 0
    @Published var games: [String] = []
    @Published var cyclying = false
    
    func spin() async {
        while !gameRunning {
            try? await Task.sleep(nanoseconds: UInt64(0.5 * Double(NSEC_PER_SEC)))
            if imageIndex < images.count { imageIndex += 1 }
            if imageIndex == images.count { imageIndex = 0 }
            currentImage = images[imageIndex]
        }
    }
    
    func play() {
        gameRunning = true
        switch selectedAnswer {
        case 0:
            if imageIndex == 1 { games.append("O"); print("won") } else { games.append("X"); print("lost") }
        case 1:
            if imageIndex == 2 { games.append("O"); print("won") } else { games.append("X"); print("lost") }
        case 2:
            if imageIndex == 0 { games.append("O"); print("won") } else { games.append("X"); print("lost") }
        default:
            print("holy shit something is broken")
            fatalError()
        }
    }
}

struct ContentView: View {
    
    @StateObject var vm = ViewManager()
    @Namespace var animation
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Text("最初はグー!")
                    .font(.system(size: 64))
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
                    .padding()
                ZStack {
                    Image("paper")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: -120, y: -20)
                        .matchedGeometryEffect(id: "GAME", in: animation)
                    if 
                    Image("scissors")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 120, y: -20)
                    Image("rock")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .offset(y: 100)
                }
                
                Spacer()
                
                SelectionView()
                
                
                
                HStack {
                    ForEach(vm.games, id: \.self) { game in
                        Text(game)
                    }
                }
            }
        }
        .task {
//            await vm.spin()
        }
    }
}

struct SelectionView: View {
    
    @StateObject var vm = ViewManager()
    
    var body: some View {
        VStack {
            Button {
                vm.selectedAnswer = 0
                vm.play()
            } label: {
                Image("rock")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(180))
            }

            HStack {
                Button {
                    vm.selectedAnswer = 1
                    vm.play()
                } label: {
                    Image("paper")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .rotationEffect(.degrees(180))
                }
                Button {
                    vm.selectedAnswer = 2
                    vm.play()
                } label: {
                    Image("scissors")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .rotationEffect(.degrees(180))
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
