//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Jason Cheladyn on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            VStack {
                GridStack(rows: 4, columns: 4) { row, col in
                    Image(systemName: "\(row * 4 + col).circle")
                    Text("R\(row) C\(col)")
                }
                
                Color.blue
                    .frame(width: 300, height: 200)
                    .watermarked(with: "Hacking with Swift")
                
                VStack {
                    Text("Gryffindor")
                        .blur(radius: 0)
                    Text("Hufflepuff")
                    Text("Ravenclaw")
                    Text("Slytherin")
                }
                .blur(radius: 5)
                
                
                Text("Hello, world!")
                    .frame(width: .infinity, height: .infinity)
                    .padding()
                    .background(Color.green)
                Text("Tittles")
                    .background(.white)
                Button("Hello, world!") {
                    // do nothing
                }
                .background(.red)
                .frame(width: 200, height: 200)
                
                
                Text("Hello, world!")
                    .padding()
                    .background(.red)
                    .padding()
                    .background(.blue)
                    .padding()
                    .background(.green)
                    .padding()
                    .background(.yellow)
                    .watermarked(with: "Liyicky was here")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content

    var body: some View {
        VStack {
                ForEach(0..<rows, id: \.self) { row in
                    HStack {
                        ForEach(0..<columns, id: \.self) { column in
                            content(row, column)
                        }
                    }
                }
            }
    }
}
