//
//  ContentView.swift
//  Book Worm
//
//  Created by Jason Cheladyn on 2022/08/02.
//

import SwiftUI

struct ContentView: View {
    
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    @Environment(\.managedObjectContext) var moc
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(books) { book in
                    NavigationLink {
                        Text(book.title ?? "Unknown Title")
                    } label: {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            VStack(alignment: .leading) {
                                Text(book.title ?? "Unknown Title")
                                    .font(.headline)
                                Text(book.author ?? "Unknown Author")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                
            }
            .navigationTitle("Bookworm")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingAddScreen.toggle()
                    } label: {
                        Label("Add Book", systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddScreen) {
                AddBookView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    @StateObject private static var data = DataController()
    
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, data.container.viewContext)
    }
}
