//
//  IMCCalculatorView.swift
//  Aula02
//
//  Created by Student19 on 19/01/23.
//

import SwiftUI

struct IMCCalculatorView: View {
    
    @State private var weight: Double = 0.0
    @State private var height: Double = 0.0
    @State private var IMC: Double = 0.0
    
    enum IMCValues {
        case baixo
        case normal
        case sobrepeso
        case obesidade
    }
    
    func calculateIMC(weight: Double, height: Double) -> Double {
        return pow(Decimal(weight / height), 2)
    }
    
    var body: some View {
        ZStack {
            Color("Color 1")
            
            VStack {
                Text("Calculadora de IMC").font(.largeTitle)
                
                TextField("Entre com o peso", value: $weight, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                    
                TextField("Entre com a altura", value: $height, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button(action: {
                    IMC = Double(calculateIMC(weight: weight, height: height))
                    
                    
                }) {
                    Text("Calcular").frame(width: 100, height: 30)
                }.buttonStyle(.borderedProminent)
                
                Spacer()
                
                Text("Nornal")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
            }.padding(.vertical, 50.0)
        }.ignoresSafeArea()
    }
}

struct IMCCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        IMCCalculatorView()
    }
}
