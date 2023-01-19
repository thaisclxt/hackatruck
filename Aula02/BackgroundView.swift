//
//  BackgroundView.swift
//  Aula02
//
//  Created by Student19 on 19/01/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Image("bg")
            .resizable() //Ajusta a imagem ao tamanho da tela
            .aspectRatio(1/1, contentMode: .fill) // Manter proporção ignorando sobras
            .edgesIgnoringSafeArea(.all) // Ignorar cantos de segurança safe area
            .saturation(0.5) // Saturação de fato
            .blur(radius: 3) // Desfoque, quanto mais alto o número mais desfocado fica
            .opacity(0.2) // Influenciar na visibilidade de cima
    }
}
