//
//  MainScreen.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
//import SwiftUI
//
//struct MainScreen: View {
//    
//    @Environment(ComponentViewModel.self) var component
//    
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .topTrailing) {
//                
//                // 1. Fundo do ambiente
//                Color("FundoParede")
//                    .ignoresSafeArea()
//                
//                Image("AmbienteDeInteracao")
//                    .resizable()
//                    .ignoresSafeArea(edges: .all)
//                
//                // 2. Elementos interativos (Gabinete e Monitor)
//                HStack(alignment: .bottom, spacing: 18) { // Alinhados por baixo e colados
//                    Gabinete()
//                        // Define apenas a largura; a altura se adapta sozinha mantendo as proporções das peças
//                        .frame(width: geometry.size.width * 0.28)
//                    
//                    Image("MonitorVazio")
//                        .resizable()
//                        .scaledToFit()
//                        // Largura proporcional para o monitor manter o tamanho correto ao lado do gabinete
//                        .frame(width: geometry.size.width * 0.405)
//                }
//                // Centraliza o conjunto na tela e joga ligeiramente para baixo para encaixar na mesa do cenário
//                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
//                .offset(y: -geometry.size.height * 0.08)
//                
//                // 3. Botão do Tutorial fixo no canto superior direito
//                TutorialButton()
//                    .padding(.top, 20)
//                    .padding(.trailing, 20)
//            }
//        }
//        .ignoresSafeArea()
//    }
//}

import SwiftUI

struct MainScreen: View {
    
    @Environment(ComponentViewModel.self) var component
    
    // 1. Detecta o tipo de tela: .compact (iPhone) ou .regular (iPad)
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topTrailing) {
                
                // Fundo do ambiente
                Color("FundoParede")
                    .ignoresSafeArea()
                
                Image("AmbienteDeInteracao")
                    .resizable()
                    .ignoresSafeArea(edges: .all)
                
                // Elementos interativos (Gabinete e Monitor)
                HStack(alignment: .bottom, spacing: 18) {
                    Gabinete()
                        .frame(width: geometry.size.width * 0.28)
                    
                    Image("MonitorVazio")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.405)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                // 2. MUDANÇA AQUI: Usa -0.08 no iPhone e um valor menor (ou 0) no iPad para não flutuar
                .offset(y: geometry.size.height * (sizeClass == .compact ? -0.08 : -0.01))
                
                // Botão do Tutorial fixo no canto superior direito
                TutorialButton()
                    .padding(.top, 18)
                    .padding(.trailing, 24)
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
