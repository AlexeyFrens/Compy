//
//  MainScreen.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.

import SwiftUI

struct MainScreen: View {
    
    @Environment(ComponentViewModel.self) var component

    
    // detecta o tipo de tela .compact p/ iPhone ou .regular p/ iPad
    @Environment(\.horizontalSizeClass) var sizeClass
    
    // var para saber se mostra o modal ou nao
    @State private var mostrarModalCustomizado = false
    
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
                HStack(alignment: .bottom, spacing: 0) {
                    Gabinete()
                        .frame(width: geometry.size.width * 0.28)
                    ZStack(alignment: .topTrailing) {
                        Image("MonitorVazio")
                            .resizable()
                            .overlay(
                                GeometryReader { monitorGeom in
                                    Group {
                                        if component.parameterBar.pecaFocada {
                                            // ✅ Mostra a view focada na peça selecionada
                                            MonitorMainScreenFocused(
                                                componentSelected: component.pecas[component.parameterBar.PecaIndex],
                                                specificationIndex: component.parameterBar.SpecIndex
                                            )
                                            .transition(.opacity)
                                        } else {
                                            
                                            MonitorMainScreen()
                                            .transition(.opacity)
                                        }
                                    }
                                    .frame(
                                        width: monitorGeom.size.width * 0.90,
                                        height: monitorGeom.size.height * 0.70
                                    )
                                    .position(
                                        x: monitorGeom.size.width / 2,
                                        y: monitorGeom.size.height * 0.42
                                    )
                                    .animation(.easeInOut(duration: 0.3), value: component.parameterBar.pecaFocada)
                                }
                            )
                            .clipped()
                            .scaledToFit()

                        FuncaoPecaButton(mostrarModal: $mostrarModalCustomizado)
                            .padding(.top, 24)
                            .padding(.trailing, 24)
                            .frame(width: 58,height: 58)
                    }
                    .frame(width: geometry.size.width * 0.405)

                    // SOLUÇÃO: VStack com Spacer absorve o espaço fantasma do HStack
//                    VStack(spacing: 0) {
//                        Spacer(minLength: 0) // Empurra o monitor para baixo
////                        
////                        Image("MonitorVazio")
////                            .resizable()
////                            .scaledToFit()
////                            .overlay(
////                                GeometryReader { monitorGeom in
////                                    MonitorMainScreen()
////                                        // Mantenha esses valores ou ajuste minimamente no iPhone
////                                        .frame(
////                                            width: monitorGeom.size.width * 0.90,
////                                            height: monitorGeom.size.height * 0.70
////                                        )
////                                        .position(
////                                            x: monitorGeom.size.width / 2,
////                                            y: monitorGeom.size.height * 0.42
////                                        )
////                                        .clipped()
////                                }
////                            )
//                    }
                    // A largura responsiva agora é aplicada no VStack inteiro
//                    .frame(width: geometry.size.width * (sizeClass == .compact ? 0.45 : 0.405))

                    //deixa monitor embaixo do botao "!"
                   
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                .offset(y: geometry.size.height * (sizeClass == .compact ? -0.08 : -0.01))
                

                // ParameterBarView posicionada livremente sem quebrar o HStack
                ParameterBarView()
                    .frame(maxWidth: geometry.size.width * 0.75)
                    .position(x: geometry.size.width / 2, y: geometry.size.height * 0.85)
                

                // botão do tutorial fica no canto da tela
                TutorialButton()
                    .padding(.top, 18)
                    .padding(.trailing, 24)
                VisaoGeralButton()
                    .padding(.top,78)
                    .padding(.trailing,15)
                
                //função if para mostrar o modal
                if mostrarModalCustomizado {
                    let pecaAtual = obterPecaPorIndice()
                    
                    Color.black.opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture {
                            mostrarModalCustomizado = false // Fecha o modal se clica fora
                        }
                    
                    //estilizando o modal
                    VStack(alignment: .leading, spacing: 16) {
                        HStack(alignment: .top) {
                            Spacer()
                            Text(pecaAtual?.pieceName ?? "Componente")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .foregroundColor(.black)
                            Spacer()
                            
                            //botão de fechar
                            Button {
                                mostrarModalCustomizado = false
                            } label: {
                                Image(systemName: "xmark.circle")
                                    .font(.system(size: 24, weight: .light))
                                    .foregroundColor(.black)
                            }
                        }
                        
                        ScrollView(showsIndicators: true) {
                            Text(pecaAtual?.about ?? "Nenhuma informação disponível.")
                                .font(.system(size: 17, weight: .medium, design: .rounded))
                                .foregroundColor(.black.opacity(0.8))
                                .lineSpacing(4)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                    }
                    .padding(25)
                    // georeader para manter modal responsivo
                    .frame(width: geometry.size.width * 0.50, height: geometry.size.height * 0.55)
                    .background(Color.cyan)                    .cornerRadius(20)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    .transition(.scale.combined(with: .opacity)) // Efeito colapsar/surgir suave
                }
            }
            .toolbar(.hidden, for: .navigationBar)
            // animaçação para o modal
            .animation(.easeInOut(duration: 0.25), value: mostrarModalCustomizado)
        }
        .ignoresSafeArea()
        
    }
    
    // func para buscar os dados do "about" pelo indice do array que está no ComponentViewModel
    private func obterPecaPorIndice() -> ParameterBarModel? {
        let indiceReal: Int
        switch component.parameterBar.PecaIndex {
        case 0: indiceReal = 0
        case 1: indiceReal = 1
        case 2: indiceReal = 2
        case 3: indiceReal = 3
        case 4: indiceReal = 4
        default: return nil
        }
        if component.pecas.indices.contains(indiceReal) {
            return component.pecas[indiceReal]
        }
        return nil
    }
}

#Preview {
    let cvm = ComponentViewModel()
    MainScreen()
        .environment(cvm)
}
