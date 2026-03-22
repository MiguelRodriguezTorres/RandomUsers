//
//  ContentView.swift
//  RandomUsers
//
//  Created by Miguel Rodriguez on 3/7/26.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationStack {
            Text("Random Users").font(.largeTitle)
            List(userData.users) { user in
                HStack {
                    AsyncImage(url: URL(string: user.picture.thumbnail)) { image in
                        image.clipShape(Circle())
                    } placeholder: {
                        Image(systemName: "person")
                            .frame(width: 50, height: 50, alignment: .center)
                    }
                    Text(user.fullName)
                }
            }
        }
        .padding()
        //.navigationTitle("Random Users")
    }
}

#Preview {
    UsersView()
}
