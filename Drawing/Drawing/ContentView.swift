//
//  ContentView.swift
//  Drawing
//
//  Created by Jason Cheladyn on 2022/07/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var thickness: Double = 0
    @State private var offset: Double = 0
    
    var body: some View {
        
        VStack {
            
            Arrow(thickness: thickness)
                .fill(.green)
                .frame(width: 300, height: 300)
                .blendMode(.screen)
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 50, damping: 5)) {
                        
                        thickness = 65
                    }
                }
            
            Slider(value: $thickness, in: -50...100)
                .padding()
            
            ColorCyclingRectangle(offset: offset)
                .frame(width: 300, height: 200)
            
            Slider(value: $offset, in: -1...1)
                .padding()
                
        }
        .background(
            Color.black
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea())
//        Checkerboard(rows: rows, columns: columns)
//            .onTapGesture {
//                withAnimation(.linear(duration: 10)) {
//                    rows = 800
//                    columns = 1600
//                }
//            }
//            .ignoresSafeArea()
        //
//        Trapezoid(insetAmount: insetAmount)
//            .frame(width: 200, height: 100)
//            .onTapGesture {
//                withAnimation {
//                    insetAmount = Double.random(in: 10...90)
//                }
//            }
        
        /*
        VStack {
            Image("Example")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount) * 20)
            
            ZStack {
                Circle()
                    .fill(Color(red: 1, green: 0, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red:0, green: 1, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red:0, green: 0, blue: 1))
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
         */
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

struct Flower: Shape {
    // How much to move this petal away from the center
    var petalOffset: Double = -20
    
    // How wide to make each petal
    var petalWidth: Double = 100
    
    func path(in rect: CGRect) -> Path {
        // The path that will hold all petals
        var path = Path()
        
        // Count from 0 up to pi * 2, moving up pi / 8 each time
        for number in stride(from: 0, to: Double.pi * 2, by: Double.pi / 8) {
            // rotate the petal by the current value of our loop
            let rotation = CGAffineTransform(rotationAngle: number)
            
            // move the petal to be at the center of our view
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            
            // create a path for this petal using our properties plus a fixed Y and height
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            
            // apply our rotation/position transformation to the petal
            let rotatedPetal = originalPetal.applying(position)
            
            // add it to our main path
            path.addPath(rotatedPetal)
        }
        
        // now send the main path back
        return path
    }
}

struct ColorCyclingCircle: View {
    var amount = 0.0
    var steps = 100
    
    var body: some View {
        ZStack {
            ForEach(0..<steps) { value in
                Circle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                color(for: value, brightness: 1),
                                color(for: value, brightness: 0.5)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        ),
                        lineWidth: 2
                    )
            }
        }
        .drawingGroup()
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct ColorCyclingRectangle: View {
    var amount = 0.0
    var steps = 100
    
    var offset: Double
    var thing1: UnitPoint {
        UnitPoint(x: -offset, y: -offset)
    }
    var thing2: UnitPoint {
        UnitPoint(x:offset, y: offset)
    }
    
    var body: some View {
        ZStack {
            ForEach(0..<steps) { value in
                Rectangle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(gradient: Gradient(colors: [
                            color(for: value, brightness: 1),
                            color(for: value, brightness: 0.5)
                        ]),
                                       startPoint: thing1, endPoint: thing2
                        ),
                        lineWidth: 2
                    )
            }
        }
        .drawingGroup()
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1 {
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct Trapezoid: Shape {
    var insetAmount: Double
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to:    CGPoint(x: 0,                       y: rect.maxY))
        path.addLine(to: CGPoint(x: insetAmount,             y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX,               y: rect.maxY))
        path.addLine(to: CGPoint(x: 0,                       y: rect.maxY))
        
        return path
    }
}

struct Checkerboard: Shape {
    var rows: Int
    var columns: Int
    
    var animatableData: AnimatablePair<Double, Double> {
        get {
            AnimatablePair(Double(rows), Double(columns))
        }
        
        set {
            rows = Int(newValue.first)
            columns = Int(newValue.second)
        }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        // figure out how big each row/column needs to be
        let rowSize = rect.height / Double(rows)
        let columnSize = rect.width / Double(columns)

        // loop over all rows and columns, making alternating squares colored
        for row in 0..<rows {
            for column in 0..<columns {
                if (row + column).isMultiple(of: 2) {
                    // this square should be colored; add a rectangle here
                    let startX = columnSize * Double(column)
                    let startY = rowSize * Double(row)

                    let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
                    path.addRect(rect)
                }
            }
        }

        return path
    }
}

struct Arrow: Shape {
    
    var thickness: Double
    
    var animatableData: Double {
        get { thickness }
        set { thickness = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to:    CGPoint(x: rect.midX, y: rect.minY)) // Tip of the point
        // Slanting right of the arrow
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        // Underside right of the arrow
        path.addLine(to: CGPoint(x: rect.maxX * 0.66+thickness, y: rect.midY))
        // Vertical line right of the arrow
        path.addLine(to: CGPoint(x: rect.maxX * 0.66+thickness, y: rect.maxY))
//        // Bottomw line of the arrow
        path.addLine(to: CGPoint(x: rect.maxX * 0.33-thickness, y: rect.maxY))
//        // Vertical line Left of the arrow
        path.addLine(to: CGPoint(x: rect.maxX * 0.33-thickness, y: rect.midY))
//        // Underside left of the arrow
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
//        // Slanting left of the arrow
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

//
