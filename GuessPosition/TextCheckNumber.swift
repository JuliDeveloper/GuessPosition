//
//  TextCheckNumber.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct TextCheckNumber: View {
    
    @Binding var value: Float
    
    var body: some View {
        Text("Подвинь слайдер, как можно ближе к: \(Int(value))")
    }
}

struct TextCheckNumber_Previews: PreviewProvider {
    static var previews: some View {
        TextCheckNumber(value: .constant(30))
    }
}
