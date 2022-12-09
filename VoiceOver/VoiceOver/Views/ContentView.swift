//
//  ContentView.swift
//  VoiceOver
//
//  Created by Jason Cheladyn on 2022/12/06.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: VoiceOverStore
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks",
    ]
    
    var body: some View {
        VStack {
            Image(pictures[store.state.selectedPicture])
                .resizable()
                .scaledToFit()
                .accessibilityLabel(labels[store.state.selectedPicture])
                .accessibilityAddTraits(.isButton)
                .accessibilityRemoveTraits(.isImage)
                .onTapGesture {
                    store.dispatch(.randomizePicture)
                }
            
            Spacer()
            
            VStack {
                Text("Score: \(store.state.score)")
                Button("Increment") { store.dispatch(.increamentScore) }
                Button("Decrement") { store.dispatch(.decrementScore) }
            }
            .accessibilityElement()
            .accessibilityLabel("Score")
            .accessibilityValue(String(store.state.score))
            .accessibilityAdjustableAction { direction in
                switch direction {
                case .increment:
                    store.dispatch(.increamentScore)
                case .decrement:
                    store.dispatch(.decrementScore)
                default:
                    print("Not Handled")
                }
            }
        }
        .onAppear {
            store.dispatch(.start)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(VoiceOverStore(initial: VoiceOverState(), reducer: voiceOverReducer))
    }
}
