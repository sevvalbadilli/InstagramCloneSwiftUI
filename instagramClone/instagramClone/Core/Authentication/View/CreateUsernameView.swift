//
//  CreateUsernameView.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import SwiftUI

struct CreateUsernameView: View {
  
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegisterViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                Spacer()
                Text("Add your username")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                TextField("User name", text: $viewModel.username)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                NavigationLink{
                   CreatePasswordView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color("buttonTextColor"))
                        .padding()
                        
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color("buttonTextColor"), lineWidth: 1)
                         
            )
                .padding(.horizontal, 24)
                Spacer()
            }
            .toolbar{
                
                ToolbarItem(placement: .topBarLeading){
                    
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
           }
        }
    }
}

#Preview {
    CreateUsernameView()
        .environmentObject(RegisterViewModel())
}
