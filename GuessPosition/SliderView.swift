//
//  SliderView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Float
    
    var body: some View {
        HStack(spacing: 10) {
            Text("0")
            Slider(sliderValue: $sliderValue)
            Text("100")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(40))
    }
}
