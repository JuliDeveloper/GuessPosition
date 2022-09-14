//
//  ButtonModifier.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 50)
            .font(.system(size: 20, weight: .bold, design: .monospaced))
            .background(.mint)
            .foregroundColor(.white)
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.orange, lineWidth: 4)
            )
    }
}

extension View {
    func buttonAppearance() -> some View {
        ModifiedContent(
            content: self,
            modifier: ButtonModifier()
        )
    }
}
