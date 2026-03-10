//
//  UserFetchingClient.swift
//  RandomUsers
//
//  Created by Miguel Rodriguez on 3/7/26.
//

import Foundation

struct UserFetchingClient {
    static private let url = URL(string: "https://randomuser.me/api/?results=10&format=pretty")!
    
    static func getUsers() async throws -> [User] {
        async let (data, _) = URLSession.shared.data(from: url)
        //return try await String(data: data, encoding: .utf8)!
        let response = try await JSONDecoder().decode(Response.self, from: data)
        return response.users
    }
}
