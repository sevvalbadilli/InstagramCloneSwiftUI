//
//  Stories.swift
//  instagramClone
//
//  Created by ŞEVVAL on 14.05.2024.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 15.0){
                Story()
                Story(image: "user",name: "Elif ")
                Story(image: "user2",name: "Ayşe ")
                Story(image: "user3",name: "fatma ")
                Story(image: "user4",name: "Ali ")
                Story(image: "user1",name: "Cihat ")
                Story(image: "user2",name: "Cihat ")
                
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    StoriesView()
}
