//
//  SecureFieldWithButton.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import SwiftUI

struct SecureFieldWithButton: View {
    
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self._text = text
        self.title = title
    }
    
    var body: some View {
        ZStack(alignment: .trailing){
            Group{
                if isSecured{
                    SecureField(title, text: $text)
                        .modifier(IGTextFieldModifier())
                }else{
                    
                    TextField(title, text: $text)
                        .modifier(IGTextFieldModifier())
                }
            }
            
            Button{
                isSecured.toggle()
            }label: {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .tint(.gray)
            }
            .padding(.trailing, 36)
        }
    }
}

#Preview {
    SecureFieldWithButton("Password", text: .constant(""))
}
