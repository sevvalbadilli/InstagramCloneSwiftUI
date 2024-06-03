//
//  User.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool{
        
        guard let currentUid = Auth.auth().currentUser?.uid else { return false}
        return currentUid == id
    }
}

extension User{
    
    static var MOCK_USER: [User] = [
        .init(id: UUID().uuidString, username: "user1",profileImageUrl: "user1",fullname: "User 1",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", email: "user1@gmail.com"),
        .init(id: UUID().uuidString, username: "user2",profileImageUrl: "user2",fullname: "User 2",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", email: "user2@gmail.com"),
        .init(id: UUID().uuidString, username: "user3",profileImageUrl: "user3",fullname: "User 3",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", email: "user3@gmail.com"),
        .init(id: UUID().uuidString, username: "user4",profileImageUrl: "user4",fullname: "User 4",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", email: "user4@gmail.com"),
        .init(id: UUID().uuidString, username: "user5",profileImageUrl: "adele",fullname: "User 5",bio: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", email: "user5@gmail.com")
    
    ]
}
