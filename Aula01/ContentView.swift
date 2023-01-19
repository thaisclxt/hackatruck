//
//  ContentView.swift
//  Aula01
//
//  Created by Student19 on 18/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var input: String = ""
    @State var validate: String = ""
    
    var body: some View {
        VStack {
            Text(input).padding(100)
            Image("truck")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            Text("HackaTruck").font(.title).foregroundColor(.blue).bold()
            HStack {
                Text("Maker").font(.headline).foregroundColor(.yellow)
                Text("Space").font(.headline).foregroundColor(.red)
            }
            Spacer()
            TextField("Entre com seu nome", text: $validate)
            Button("Enviar") {
                input = validate
            }.buttonStyle(.bordered)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
