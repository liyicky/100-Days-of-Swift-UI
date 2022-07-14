//
//  ContentView.swift
//  Drawing
//
//  Created by Jason Cheladyn on 2022/07/14.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var safeSpace
    @State var animationStarted = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .frame(width: 150)
                .zIndex(1)
                .offset(x: -100, y: animationStarted ? -320 : -450)
            LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom)
                .frame(width: 150)
                .clipShape(Circle())
                .offset(x: -100, y: -300)
            
            LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .top, endPoint: .bottom)
                .clipShape(Circle())
                .frame(width: 150)
                .offset(x: 100, y: -300)
            //
            
            
            Arc(startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
                .strokeBorder(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 100)
                .offset(y: -150)
                
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.3)) {
                animationStarted = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation(.easeInOut(duration: 0.3)) {
                    animationStarted = false
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

struct Arc: Shape, InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount = 0.0

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)

        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}
