//
//  FeedView.swift
//  instagramClone
//
//  Created by ŞEVVAL on 12.05.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView{
                StoriesView()
                 
                LazyVStack{
                    ForEach(Post.MOCK_POST){ post in
                        FeedCell(post: post)
                        
                    }
                }
                .padding(.top,8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                
                ToolbarItem(placement: .topBarLeading){
                    Image("instagram2")
                        .resizable()
                        .frame(width: 100, height: 29)
                }
           
                    ToolbarItem(placement: .topBarTrailing){
                        Image(systemName: "heart")
                            //.imageScale(.large)
                    }
                
                
                    ToolbarItem(placement: .topBarTrailing){
                        Image("Icons-4")
                            .padding(.leading,15)
                            
                        
                    }
               
            }
        }
    }
}

#Preview {
    FeedView()
}
