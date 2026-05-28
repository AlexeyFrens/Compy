//
//  Gabinete.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.

import SwiftUI

struct Gabinete: View {
    // selecionar o índice do array com as infos sobre a peça
    @Environment(ComponentViewModel.self) var component
    
    // destacar a peça selecionada com stroke verde agua
    
    
    // var para rodar a animação quando peça for selecionada
    @State private var animarPulso = false
    
    var pecaSelecionada: String {
          switch component.parameterBar.PecaIndex {
          case 0: return "RAM"
          case 1: return "Fonte"
          case 2: return "HD"
          case 3: return "Placa de Video"
          case 4: return "Processador"
          default: return ""
          }
      }
    
    var body: some View {
        // imagem do gabinete vazio é o pai dessa view, então a proporção das peças vão mudar em relação a ele
        Image("GabineteVazio")
            .resizable()
            .scaledToFit()
            .overlay(
                //o GeometryReader dentro do overlay faz com que as coordenadas das peças mudem junto com o gabinete
                GeometryReader { geo in
                    ZStack {
                        
                        //PROCESSADOR
                        Button {
                            component.parameterBar.PecaIndex = 4
                            print("Você clicou no Processador")
                        } label: {
                            Image("Processador")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.12)
                                // efeito vai ser aplicado direto na img
                                .scaleEffect(pecaSelecionada == "Processador" && animarPulso ? 1.4 : 1.0)
                                .opacity(pecaSelecionada == "Processador" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "Processador" ? Color.cyan : Color.clear, lineWidth: 3)

                                )
                        }
                        .position(x: geo.size.width * 0.390, y: geo.size.height * 0.290)
                        
                        //PLACA DE VIDEO
                        Button {
                            component.parameterBar.PecaIndex = 3
                            print("Você clicou na Placa de Video")
                         
                        } label: {
                            Image("PlacaDeVideo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.66)
                                .scaleEffect(pecaSelecionada == "Placa de Video" && animarPulso ? 1.09 : 1.0)
                                .opacity(pecaSelecionada == "Placa de Video" && animarPulso ? 1.0 : 0.7)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "Placa de Video" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.382, y: geo.size.height * 0.530)
                        
                        //Armazenamento HD
                        Button {
                            component.parameterBar.PecaIndex = 2
                            print("Voce clicou no HD")
                          
                        } label: {
                            Image("HD")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.14)
                                .scaleEffect(pecaSelecionada == "HD" && animarPulso ? 1.08 : 1.0)
                                .opacity(pecaSelecionada == "HD" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "HD" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.780, y: geo.size.height * 0.580)
                        
                        //MEMÓRIA RAM
                        Button {
                            component.parameterBar.PecaIndex = 0
                            print("Voce clicou na Memória RAM")
                          
                        } label: {
                            Image("MemoriaRam")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.14)
                                .scaleEffect(pecaSelecionada == "RAM" && animarPulso ? 1.1 : 1.0)
                                .opacity(pecaSelecionada == "RAM" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "RAM" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.555, y: geo.size.height * 0.290)
                        
                        //FONTE
                        Button {
                            component.parameterBar.PecaIndex = 1
                            print("Você clicou na Fonte")
                           
                        } label: {
                            Image("Fonte")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.34)
                                .scaleEffect(pecaSelecionada == "Fonte" && animarPulso ? 1.1 : 1.0)
                                .opacity(pecaSelecionada == "Fonte" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "Fonte" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.260, y: geo.size.height * 0.816)
                        
                    }
                }
            )
            //qnd esse código inicia ele muda a a var para true
            .onAppear {
                withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                    animarPulso = true
                }
            }
    }
}


#Preview {
    let cvm = ComponentViewModel()
    Gabinete()
        .environment(cvm)
}
