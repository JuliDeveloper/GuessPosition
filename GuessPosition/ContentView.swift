//
//  ContentView.swift
//  GuessPosition
//
//  Created by Julia Romanenko on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Int = 30
    @State var isPresentedAlert: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TextCheckNumber(value: $value)
            ButtonView(title: "Проверь меня!", action: checkValue)
                .alert("Твой счёт:", isPresented: $isPresentedAlert, actions: {}) {
                    Text("")
                }
            ButtonView(title: "Начать заново", action: { value = 0 })
        }
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
