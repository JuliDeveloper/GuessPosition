//
//  TextCheckNumber.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct TextCheckNumber: View {
    
    let value: Int
    
    var body: some View {
        Text("Подвинь слайдер, как можно ближе к: \(value)")
    }
}

struct TextCheckNumber_Previews: PreviewProvider {
    static var previews: some View {
        TextCheckNumber(value: 30)
    }
}
