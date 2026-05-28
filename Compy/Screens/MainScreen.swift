//
//  MainScreen.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
import SwiftUI

struct MainScreen: View {
    
    @Environment(ComponentViewModel.self) var component
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topTrailing) {
                
                // Cor de fundo da tela
                Color("FundoParede")
                    .ignoresSafeArea()
                
                Image(.ambienteDeInteracao)
                    .resizable()
                    .ignoresSafeArea(edges: .all)
                
                // HStack para o gabinete e monitor
                HStack(alignment: .bottom, spacing: 18) {
                    Gabinete()
                        .frame(width: geometry.size.width * 0.28)
                    
                    // SOLUÇÃO: VStack com Spacer absorve o espaço fantasma do HStack
                    VStack(spacing: 0) {
                        Spacer(minLength: 0) // Empurra o monitor para baixo
                        
                        Image("MonitorVazio")
                            .resizable()
                            .scaledToFit()
                            .overlay(
                                GeometryReader { monitorGeom in
                                    MonitorMainScreen()
                                        // Mantenha esses valores ou ajuste minimamente no iPhone
                                        .frame(
                                            width: monitorGeom.size.width * 0.90,
                                            height: monitorGeom.size.height * 0.70
                                        )
                                        .position(
                                            x: monitorGeom.size.width / 2,
                                            y: monitorGeom.size.height * 0.42
                                        )
                                        .clipped()
                                }
                            )
                    }
                    // A largura responsiva agora é aplicada no VStack inteiro
                    .frame(width: geometry.size.width * (sizeClass == .compact ? 0.45 : 0.405))
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                .offset(y: geometry.size.height * (sizeClass == .compact ? -0.08 : -0.01))
                
                // ParameterBarView posicionada livremente sem quebrar o HStack
                ParameterBarView()
                    .position(x: geometry.size.width / 2, y: geometry.size.height * 0.85)
                
                // Botão do tutorial fica no canto da tela
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
