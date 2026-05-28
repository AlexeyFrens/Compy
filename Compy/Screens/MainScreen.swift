//
//  MainScreen.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
import SwiftUI

struct MainScreen: View {
    
    @Environment(ComponentViewModel.self) var component
    
    //detecta o tipo de tela: .compact p/ iPhone ou .regular p/ iPad
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topTrailing) {
                
                //cor de fundo da tela
                Color("FundoParede")
                    .ignoresSafeArea()
                
                Image(.ambienteDeInteracao)
                    .resizable()
                    .ignoresSafeArea(edges: .all)
                
                // HStack para o gabinete e monitor
                HStack(alignment: .bottom, spacing: 18) {
                    Gabinete()
                        .frame(width: geometry.size.width * 0.28)
                    
                    Image("MonitorVazio")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.405)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                
                .offset(y: geometry.size.height * (sizeClass == .compact ? -0.08 : -0.01))
                
                //botão do tutorial fica no canto da tela
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
