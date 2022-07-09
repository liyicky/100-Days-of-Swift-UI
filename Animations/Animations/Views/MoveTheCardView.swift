//
//  MoveTheCardView.swift
//  Animations
//
//  Created by Jason Cheladyn on 2022/06/29.
//

import SwiftUI

struct MoveTheCardView: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in dragAmount = .zero }
            )
            .animation(.spring(), value: dragAmount)
    }
}

struct MoveTheCardView_Previews: PreviewProvider {
    static var previews: some View {
        MoveTheCardView()
    }
}
