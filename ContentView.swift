//
//  ContentView.swift
//  Animal
//
//  Created by Turma02-8 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Float = 0
    @State private var tempo: Float = 0
    @State private var velocidade = ""
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea().opacity(0.8)
            VStack{
                
                VStack(spacing: 40) {
                    Text("Digite a distancia (km):")
                    TextField("Digite a distancia (km): ", value: $distancia, format: .number)
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 250, height: 10)
                    
                    
                    Text("Digite o tempo (h):  \(tempo)")
                    TextField("Digite o tempo (h): ", value: $tempo, format: .number)
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 250, height: 10)
                    
                    
                    
                    Button("Calcular"){
                    }
                    .frame(width: 150, height: 50)
                    .background(.black)
                    .foregroundColor(.orange)
                   
                    
                    Spacer()
                }
                Spacer()
                Image("interrogacao")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 250)
                    .position(x:190, y: 80)
                
            
            }
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text("Tartaruga (0 - 9.9 km/h)")
                Text("Elefante (10 - 29.9 km/h)")
                Text("Avestruz (30 - 69.9 km/h)")
                Text("Leão (70 - 89.9 km/h)")
                Text("Guepardo (90 - 130 km/h)")
            }
   
            .padding()
            .frame(width: 250, height: 180, alignment: .topLeading)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.bottom, 40)
            .position(x:200, y: 700)

                
            
            
            
            
        }
        
    }
    
    
    
    
    
}

#Preview {
    ContentView()
}
