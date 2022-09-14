//
//  ContentView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var targetValue: Int = 40
    @State var currentValue: Float = 0.0
    @State var isPresentedAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            TextCheckNumber(value: $targetValue)
            SliderView(sliderValue: $currentValue)
            VStack(spacing: 20) {
                ButtonView(title: "Проверь меня!", action: { isPresentedAlert.toggle() })
                    .alert("Твой счёт:", isPresented: $isPresentedAlert, actions: {}) {
                        Text("\(computeScore())")
                    }
                ButtonView(title: "Начать заново", action: { targetValue = Int.random(in: 0...100) })
            }
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
