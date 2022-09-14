//
//  CustomSlider.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct CustomSlider: UIViewRepresentable {
    
    @Binding var sliderValue: Double
    
    let color: UIColor
    let opacity: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.maximumValue = 0
        slider.maximumValue = 100
        slider.tintColor = .systemMint
        slider.thumbTintColor = color
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.changeValue),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        
        uiView.value = Float(sliderValue)
        uiView.thumbTintColor = color.withAlphaComponent(CGFloat(opacity) / 100)
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(sliderValue: $sliderValue)
    }
    
}

extension CustomSlider {
    class Coordinator: NSObject {
        
        @Binding var sliderValue: Double
        
        init(sliderValue: Binding<Double>) {
            self._sliderValue = sliderValue
        }
        
        @objc func changeValue(at slider: UISlider) {
            sliderValue = Double(slider.value)
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        CustomSlider(sliderValue: .constant(30), color: .orange, opacity: 50)
    }
}
