//
//  ContentView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Float = 30
    @State var isPresentedAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            TextCheckNumber(value: $value)
            SliderView(sliderValue: $value)
            VStack(spacing: 20) {
                ButtonView(title: "Проверь меня!", action: checkValue)
                    .alert("Твой счёт:", isPresented: $isPresentedAlert, actions: {}) {
                        Text("")
                    }
                ButtonView(title: "Начать заново", action: { value = 0 })
            }
        }
        .padding()
    }
    
    private func checkValue() {
        isPresentedAlert.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
