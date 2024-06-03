//
//  ProfileHeaderView.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    @State private var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10){
            //profil kartı
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                HStack(spacing: 8){
                  
                  UserStatView(value: 10, title: "Post")
                  UserStatView(value: 10, title: "Followers")
                  UserStatView(value: 10, title: "Following")
                    
                }
                
            }
            .padding(.horizontal)
            
            //isim ve açıklama kısmı
            VStack(alignment: .leading, spacing: 4){
                
                if let fullname = user.fullname{
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio{
                    Text(bio)
                        .font(.footnote)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading )
            .padding(.horizontal)
            
            Button{
                if user.isCurrentUser{
                    showEditProfile.toggle()
                }else{
                    print("Takip edildi...")
                }
                
            }label: {
                Text( user.isCurrentUser ? "Edit Profil" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundStyle(user.isCurrentUser ? .black : .white)
                    .foregroundStyle(Color("buttonTextColor"))
                    .cornerRadius(6)
                    .overlay(
                     RoundedRectangle(cornerRadius: 6)
                        .stroke(user.isCurrentUser ? .gray : .clear , lineWidth: 1)
                    
                    )
            }
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile, content: {
            EditProfileView(user: user)
        })
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
