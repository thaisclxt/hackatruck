//
//  ContentView.swift
//  Aula02
//
//  Created by Student19 on 19/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var showingAlert: Bool = false
    
    var body: some View {
        ZStack { // Serve pra indicar a ordem das camadas
            BackgroundView()
            
            VStack {
                Text("Bem vindo, \(name)").font(.largeTitle)
                TextField("Entre com seu nome", text: $name)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                }
                
                Spacer()
                
                Button("Entrar") {
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title:
                            Text("ALERTA!"),
                        message:
                            Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton:
                            .default(Text("Vamos lá"))
                    )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
