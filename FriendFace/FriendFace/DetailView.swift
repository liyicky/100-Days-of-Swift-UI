//
//  DetailView.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import SwiftUI
import ScalingHeaderScrollView

struct DetailView: View {
    
    let user: User
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScalingHeaderScrollView {
                ZStack {
                    AsyncImage(
                        url: URL(string: "https://picsum.photos/500"),
                        content: { image in
                            image.resizable()
                                .scaledToFill()
                        },
                        placeholder: {
                            Image("bg")
                                .resizable()
                                .scaledToFill()
                                .overlay {
                                    Color.white.opacity(0.3).blur(radius: 100)
                                }
                        })
                    
                    HStack {
                        Text(user.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .shadow(radius: 5)
                        Circle()
                            .frame(width: 25, height: 25)
                            .foregroundColor(user.isActive ? .green : .red)
                    }
                    .offset(y: 50)
                }
            } content: {
                VStack {
                    InfoCell(label: "Age", text: String(user.age))
                    InfoCell(label: "Company", text: user.company)
                    InfoCell(label: "Email", text: user.email)
                    InfoCell(label: "Address", text: user.address)
                    InfoCell(label: "About", text: user.about)
                    InfoCell(label: "Registered", text: user.formattedDate)
                    InfoCell(label: "Friends", text: user.friendsString)
                    
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .shadow(radius: 5)
                        .foregroundColor(.white)
                )
                .padding()
            }
            .allowsHeaderCollapse()
            .ignoresSafeArea()
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User(
            id: "",
            isActive: true,
            name: "Jason Cheladyn",
            age: 31,
            company: "Liyicky",
            email: "nirinth@gmail.com",
            address: "大阪城天守閣",
            about: "I'm a party girl, in a party world.",
            registered: "2015-03-14T01:26:11-00:00",
            tags: ["poo"],
            friends: [
                User.Friend(id: "1", name: "Bob Johnson"),
                User.Friend(id: "2", name: "Charles Kane"),
                User.Friend(id: "3", name: "Bart Simpson"),
                User.Friend(id: "4", name: "Luke Skywalker"),
                User.Friend(id: "5", name: "Alan Grant"),
                User.Friend(id: "6", name: "Peter Parker")
            ]
        ))
    }
}

struct InfoCell: View {
    
    let label: String
    let text: String
    
    var body: some View {
        HStack(alignment: .top) {
            HStack {
                Text(label)
                    .font(.caption)
                    .fontWeight(.thin)
                Spacer()
            }
            .frame(width: 100)
            
            Text(text)
                .font(.body)
                .fontWeight(.light)
            Spacer()
        }
        .padding(.bottom, 1)
    }
}
