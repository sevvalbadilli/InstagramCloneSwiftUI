//
//  IGTextFieldModifier.swift
//  instagramClone
//
//  Created by ŞEVVAL on 15.05.2024.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
       content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}

