//
//  MainScreen.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct MainScreen: View {
    
    @Environment(ComponentViewModel.self) var component
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topTrailing) {
                
                // 1. Fundo do ambiente
                Color("FundoParede")
                    .ignoresSafeArea()
                
                Image("AmbienteDeInteracao")
                    .resizable()
                    .ignoresSafeArea(edges: .all)
                
                // 2. Elementos interativos (Gabinete e Monitor)
                HStack(alignment: .bottom, spacing: 18) { // Alinhados por baixo e colados
                    Gabinete()
                        // Define apenas a largura; a altura se adapta sozinha mantendo as proporções das peças
                        .frame(width: geometry.size.width * 0.28)
                    
                    Image("MonitorVazio")
                        .resizable()
                        .scaledToFit()
                        // Largura proporcional para o monitor manter o tamanho correto ao lado do gabinete
                        .frame(width: geometry.size.width * 0.40)
                }
                // Centraliza o conjunto na tela e joga ligeiramente para baixo para encaixar na mesa do cenário
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                .offset(y: -geometry.size.height * 0.040)
                
                // 3. Botão do Tutorial fixo no canto superior direito
                TutorialButton()
                    .padding(.top, 20)
                    .padding(.trailing, 40)
            }
        }
        .ignoresSafeArea()
    }
}


#Preview {
    
    let cvm = ComponentViewModel()
    
    MainScreen()
        .environment(cvm)
}
