//
//  ContentView.swift
//  Aula03
//
//  Created by Student19 on 20/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Amarelo", systemImage: "paintbrush.fill")
                }
                
            
            SecondView()
                .tabItem {
                    Label("Verde", systemImage: "paintbrush.fill")
                }
            
            ThirdView()
                .tabItem {
                    Label("Roxo", systemImage: "paintbrush.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
