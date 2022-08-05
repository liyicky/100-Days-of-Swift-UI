//
//  DetailView.swift
//  Book Worm
//
//  Created by Jason Cheladyn on 2022/08/04.
//

import SwiftUI
import CoreData

struct DetailView: View {
    
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var showingDeleteAlert = false
    
    let book: Book
    
    var bookTitle: String {
        if let title = book.title, let date = book.date {
            return title + " " + date.formatted()
        }
        
        return book.title ?? "Unknown Title"
    }
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottomTrailing) {
                Image(book.genre ?? "Thriller")
                    .resizable()
                    .scaledToFit()
                Text(book.genre?.uppercased() ?? "THRILLER")
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                    .offset(x: -5, y: -5)
            }
            
            Text(book.author ?? "Unknown author")
                .font(.title)
                .foregroundColor(.secondary)
            Text(book.review ?? "No review")
                .padding()
            RatingView(rating: .constant(Int(book.rating)))
                .font(.largeTitle)
        }
        .navigationTitle(bookTitle ?? "Unkonwn Book")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Delete book", isPresented: $showingDeleteAlert) {
            Button("Delete", role: .destructive, action: deleteBook)
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Are you sure?")
        }
        .toolbar {
            Button {
                showingDeleteAlert = true
            } label: {
                Label("Delete this book", systemImage: "trash")
            }
        }
    }
    
    func deleteBook() {
        moc.delete(book)
        dismiss()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let book = Book(context: DataController.context)
        book.title = "Jurassic Park"
        book.author = "Micheal Crichton"
        book.genre = "Thriller"
        book.rating = Int16(5)
        book.review = "One of the most classic science fiction novels ever written, Jurassic Park is a tense, action filled, and groundbreaking book that won't let you go! The novel takes place on a tropical island, where a man has invented a technique to extract dinosaur DNA from mosquitoes, and is then able to breed living dinosaurs. However, something goes terribly wrong, and the characters then have to escape the island with giant dinosaurs after them. The novel is incredible, and it displays the dinosaurs perfectly. The characters are all fleshed out and seem like real people, and the couple sub-plots are exciting and do not seem tedious at all. I would recommend this book to anyone looking for an action story, a sci-fi novel, or a good book in general."
        book.date = Date.now
        
        return NavigationView {
            DetailView(book: book)
        }
    }
}
