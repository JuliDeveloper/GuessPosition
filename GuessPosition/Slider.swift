//
//  Slider.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct Slider: UIViewRepresentable {
    
    @Binding var sliderValue: Float
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.maximumValue = 0
        slider.maximumValue = 100
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        
        uiView.value = sliderValue
        uiView.thumbTintColor = opacity(Double(sliderValue)) as? UIColor
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(sliderValue: $sliderValue)
    }
    
}

extension Slider {
    class Coordinator: NSObject {
        
        @Binding var sliderValue: Float
        
        init(sliderValue: Binding<Float>) {
            self._sliderValue = sliderValue
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider(sliderValue: .constant(30))
    }
}
