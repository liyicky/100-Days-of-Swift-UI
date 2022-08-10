//
//  ContentView.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ViewManager()
    
    var body: some View {
        NavigationView {
            List {
                userList
            }
            .navigationTitle("Friend Face")
            .task {
                await vm.fetchUsers()
            }
        }
    }
}

extension ContentView {
    var userList: some View {
        ForEach(ViewManager.CHARACTERS, id: \.self) { char in
            Section(String(char)) {
                ForEach(vm.sortedUsers[String(char)] ?? [], id: \.self.id) { user in
                    userRow(user: user)
                }
            }
        }
    }
    
    func userRow(user: User) -> some View {
        NavigationLink(destination: DetailView(user: user)) {
            HStack {
                AsyncImage(
                    url: URL(string: "https://picsum.photos/100"),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 50, maxHeight: 50)
                            .clipShape(Circle())
                    },
                    placeholder: {
                        ProgressView()
                            .frame(width: 50, height: 50)
                    })
                
                Text(user.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
