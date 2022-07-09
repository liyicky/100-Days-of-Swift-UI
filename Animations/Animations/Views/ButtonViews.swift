//
//  ButtonViews.swift
//  Animations
//
//  Created by Jason Cheladyn on 2022/06/29.
//

import SwiftUI

struct ButtonViews: View {
    
    @State private var animation1Amount = 1.0
    @State private var animation2Amount = 1.0
    @State private var animation3Amount = 0.0
    @State private var isToggled = false
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 100) {
                
                Button("Tap Me") {
                    withAnimation(.interpolatingSpring(stiffness: 75, damping: 10)) {
                        animation3Amount += 360
                    }
                }
                .padding(40)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animation3Amount), axis: (x: 0, y: 0, z: 1))
                
                
                Stepper("Scale amount", value: $animation2Amount.animation(
                    .easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
                ), in: 1...10)
                .padding()
                
                Button("Tap Me") {
                    animation2Amount += 1
                }
                .padding(40)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animation2Amount)
                
                
                Button("Tap Me") {
                    // do nothing
                }
                .padding(50)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.red)
                        .scaleEffect(animation1Amount)
                        .opacity(2 - animation1Amount)
                        .animation(
                            .easeOut(duration: 1)
                            .repeatForever(autoreverses: false),
                            value: animation1Amount
                        )
                )
                .onAppear {
                    animation1Amount = 2
                }
                
                Button("Tap Me") {
                    isToggled.toggle()
                }
                .frame(width: 200, height: 200)
                .background(isToggled ? .blue : .red)
                .foregroundColor(.white)
                .animation(.default, value: isToggled)
                .clipShape(RoundedRectangle(cornerRadius: isToggled ? 60 : 0))
                .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: isToggled)
            }
        }
    }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViews()
    }
}
