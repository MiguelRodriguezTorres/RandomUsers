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
            VStack {
                Text("Raw JSON Data:")
            }
            ScrollView {
                Text(userData.users)
            }
        }
        .padding()
        .navigationTitle("Random Users")
    }
}

#Preview {
    UsersView()
}
