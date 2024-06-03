//
//  UserStatView.swift
//  instagramClone
//
//  Created by ŞEVVAL on 12.05.2024.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    
    var body: some View {
        VStack{
            
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.subheadline)
            
        }.frame(width: 76)
    }
}

#Preview {
    UserStatView(value: 19, title: "Post")
}
