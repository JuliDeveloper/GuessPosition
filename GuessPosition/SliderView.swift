//
//  SliderView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    let color: UIColor
    let opacity: Int
    
    var body: some View {
        HStack(spacing: 10) {
            Text("0")
            CustomSlider(sliderValue: $sliderValue, color: color, opacity: opacity)
            Text("100")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(40), color: .red, opacity: 50)
    }
}
