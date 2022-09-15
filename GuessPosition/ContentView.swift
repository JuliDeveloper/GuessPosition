//
//  ContentView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var targetValue: Int = Int.random(in: 1...100)
    @State var currentValue: Double = 40.0
    @State var isPresentedAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            TextCheckNumber(value: targetValue)
            
            SliderView(sliderValue: $currentValue,
                       color: .orange,
                       opacity: computeScore())
            
            VStack(spacing: 20) {
                
                ButtonView(title: "Проверь меня!",
                           action: { isPresentedAlert.toggle() })
                    .alert("Твой счёт:", isPresented: $isPresentedAlert, actions: {}) {
                        Text("\(computeScore())")
                    }
                
                ButtonView(title: "Начать заново") {
                    targetValue = Int.random(in: 0...100)
                }
            }
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
