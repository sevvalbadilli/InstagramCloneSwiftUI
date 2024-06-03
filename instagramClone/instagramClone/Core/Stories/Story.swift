//
//  Story.swift
//  instagramClone
//
//  Created by ŞEVVAL on 14.05.2024.
//

import SwiftUI

struct Story: View {
    
    var image: String = "user1"
    var name: String = "User 1"
    
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60,height: 60)
                    .clipShape(Circle())
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5)
                    .frame(width: 68 , height: 68)
            
        )
            .frame(width: 70,height: 70)
            
            Text(name)
                .font(.caption)
                //.padding()
        }
            
            
        
    }
}

#Preview {
    Story()
}
