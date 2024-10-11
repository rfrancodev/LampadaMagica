//
//  ContentView.swift
//  LampadaMagica
//
//  Created by Rafael Franco on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var lampadaLigada: Bool = false
    @State var potencia: Double = 1.0
    
    var body: some View {
        
        VStack {
            Text("Lâmpada Mágica")
                .font(.system(size: 42))
            
            Image(systemName: "lightbulb")
                .font(.system(size: 240))
                .foregroundStyle(.black)
                .padding()
        
        
        Spacer()
        
            HStack {
                Text("Lâmpada: ")
                    .font(.system(size: 18))
                
                Toggle(lampadaLigada ? "Desligar" : "Ligar" , isOn: $lampadaLigada)
                    .font(.system(size: 18))
                    .foregroundColor(
                        lampadaLigada ? Color.red : Color.blue
                        )
            }
        
        HStack {
            Text("Potência:")
                .font(.system(size: 18))
            Slider(value: lampadaLigada ? $potencia : .constant(0))
            
            Text("\(lampadaLigada ? potencia * 100 : 0.0, specifier: "%.0f%")%")
            
            }
        }
        .padding(30)
        .frame(maxWidth: .infinity, maxHeight: .infinity )
        .background(
            lampadaLigada ? .yellow.opacity(potencia) : .white)
        
    }
    
    
    
}

#Preview {
    ContentView()
}
