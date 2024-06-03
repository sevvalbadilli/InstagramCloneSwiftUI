//
//  Post.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post{
    static var MOCK_POST: [Post] = [
    
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              likes: 123,
              imageUrl: "user1",
              timestamp: Date(),
              user: User.MOCK_USER[0]),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              likes: 569,
              imageUrl: "user2",
              timestamp: Date(),
              user: User.MOCK_USER[1]),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              likes: 97,
              imageUrl: "user3",
              timestamp: Date(),
              user: User.MOCK_USER[2]),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              likes: 645,
              imageUrl: "user4",
              timestamp: Date(),
              user: User.MOCK_USER[3]),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              likes: 989,
              imageUrl: "adele",
              timestamp: Date(),
              user: User.MOCK_USER[4])
    
    ]
}
