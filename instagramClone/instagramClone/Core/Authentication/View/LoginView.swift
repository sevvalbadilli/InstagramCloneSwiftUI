//
//  LoginView.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            Spacer()
            Image("instagram2")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 110)
            
            VStack(spacing: 12){
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureFieldWithButton("enter your password", text: $viewModel.password)
            }
            
            Button{
                Task{try await viewModel.signIn()}
            } label: {
                Text("Login")
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
            .padding(.top, 12)
            
            
            Button{
                print("forget password")
            } label: {
                Text("Foerget Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 24)
                
            }
            .frame(maxWidth: .infinity , alignment: .trailing)
            HStack{
                
                Rectangle()
                    .frame(height: 0.5)
                    Text("OR")
                Rectangle()
                    .frame(height: 0.5)
                
            }
            .padding(.horizontal, 24)
            .foregroundStyle(.gray)
            
            HStack{
                
                Image("facebook")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Text("Continue with facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
            }
            .padding(.top, 8)
            
            Spacer()
            Divider()
            
            NavigationLink{
               AddEmailView()
                    .navigationBarBackButtonHidden(true)
                
            } label: {
                HStack{
                    
                    Text("Don't have an account")
                    Text("Sign Up")
                        .fontWeight(.semibold)
                    
                    
                }
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(RegisterViewModel())
}
