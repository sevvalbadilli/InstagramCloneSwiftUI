//
//  FeedCell.swift
//  instagramClone
//
//  Created by ŞEVVAL on 12.05.2024.
//

import SwiftUI

struct FeedCell: View {
    var post: Post
    @State private var isPressed = false
    @State private var likes = 123
    
    var body: some View {
        VStack(){
            
            //profil fotografı ve adı
            HStack{
                
                if let user = post.user{
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("buttonTextColor"))
                    Spacer()
                    
                }
                
              
            }
            .padding(.leading, 8)
            
            //post gorseli
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
                
            
            //Action butonları
            HStack{
                
                Button(action: {
                           isPressed.toggle()
                    if isPressed {
                                        likes += 1 // Update the likes when the button is pressed
                                    } else {
                                        likes -= 1 // Optionally handle unliking
                                    }
                       }) {
                           Image(systemName: isPressed ? "heart.fill" : "heart")
                               .imageScale(.large)
                               .foregroundColor(isPressed ? .red : .black)
                       }
                       .animation(.easeInOut, value: isPressed)
                
                Button{
                    
                }label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                 
                Button{
                    
                }label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
                
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(Color("buttonTextColor"))
            
            
            //Beğeni sayısı ve like
            Text("\(likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            
            //Açıklama kısmı
            
            HStack{
                Text("\(post.user?.username ?? "") ")
                    .fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            
            Text("10h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .foregroundStyle(.gray)
    
            
                
                    
          
            HStack {
                HStack(spacing: 7.0){
                    
                    Image(post.imageUrl)
                        .resizable()
                        .frame(width: 24,height: 24)
                        .clipShape(Circle())
                    
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                }
                
                Spacer()
                
                HStack{
                    
                    Text("😂")
                    Text("😍")
                    Image(systemName: "plus.circle")
                        .foregroundStyle(.secondary)
                }
            }.padding(.horizontal,12)
                .padding(.vertical,9)
            
     
        }
            
    }
}


#Preview {
    FeedCell(post: Post.MOCK_POST[0])
}
