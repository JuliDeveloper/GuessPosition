//
//  ButtonView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }
        .buttonAppearance()
    }
}

struct CheckButton_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Hi", action: {})
    }
}
