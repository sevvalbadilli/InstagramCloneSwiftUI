//
//  CompleteSignUpView.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegisterViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12){
                Spacer()
                Text("Welcome to Insta, \(viewModel.username)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("buttonTextColor"))
                
                Text("Click below to complete registration and start using Insta")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundStyle(.red)
                }
                
                
                Button{
                    Task{ try await viewModel.createUser() }
                } label: {
                    Text("Complete Sign Up")
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
    CompleteSignUpView()
        .environmentObject(RegisterViewModel())
}
