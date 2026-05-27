//
//  Gabinete.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct Gabinete: View {
    
    //Destacar a peça selecionada com stroke verde agua
    @State private var pecaSelecionada: String = ""
    
    //selecionar o índice do array com as infos sobre a peça
    @Environment(ComponentViewModel.self) var component
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {
                
                //Imagem do gabinete sem peças
                Image("GabineteVazio")
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: geo.size.width * 0.4,
                        height: geo.size.height * 0.7
                    )
                
                //Processador
                Button {
                    component.parameterBar.PecaIndex = 0
                    print("Você clicou no Processador")
                    pecaSelecionada = "Processador"
                } label: {
                    
                    Image("Processador")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.04)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(
                                    pecaSelecionada == "Processador"
                                    ? Color.cyan
                                    : Color.clear,
                                    
                                    lineWidth: 3
                                )
                        )
                }
                //posiçao das peças
                .position(
                    x: geo.size.width * 0.468,
                    y: geo.size.height * 0.355
                )
                
                //Placa de video
                Button {
                    component.parameterBar.PecaIndex = 1
                    print("Você clicou na Placa de Video")
                    pecaSelecionada = "Placa de Video"
                } label: {
                    
                    Image("PlacaDeVideo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.18)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(
                                    pecaSelecionada == "Placa de Video"
                                    ? Color.cyan
                                    : Color.clear,
                                    
                                    lineWidth: 3
                                )
                        )
                }
                //posiçao das peças
                .position(
                    x: geo.size.width * 0.47,
                    y: geo.size.height * 0.525
                )
                
                //HD - Armazenamento
                Button {
                    component.parameterBar.PecaIndex = 2
                    print("Voce clicou no HD")
                    pecaSelecionada = "HD"
                } label: {
                    
                    Image("HD")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.05)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(
                                    pecaSelecionada == "HD"
                                    ? Color.cyan
                                    : Color.clear,
                                    
                                    lineWidth: 3
                                )
                        )
                }
                //posiçao das peças
                .position(
                    x: geo.size.width * 0.575,
                    y: geo.size.height * 0.50
                )
                
                //Memória RAM
                Button {
                    component.parameterBar.PecaIndex = 3
                    print("Voce clicou na Memória RAM")
                    pecaSelecionada = "RAM"
                    
                } label: {
                    
                    Image("MemoriaRam")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.035)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(
                                    pecaSelecionada == "RAM"
                                    ? Color.cyan
                                    : Color.clear,
                                    
                                    lineWidth: 3
                                )
                        )
                }
                //posiçao das peças
                .position(
                    x: geo.size.width * 0.515,
                    y: geo.size.height * 0.355
                )
                
                
                //Fonte
                Button {
                    component.parameterBar.PecaIndex = 4
                    print("Você clicou na Fonte")
                    pecaSelecionada = "Fonte"
                } label: {
                    
                    Image("Fonte")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.095)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(
                                    pecaSelecionada == "Fonte"
                                    ? Color.cyan
                                    : Color.clear,
                                    
                                    lineWidth: 3
                                )
                        )
                }
                //posiçao das peças
                .position(
                    x: geo.size.width * 0.44,
                    y: geo.size.height * 0.72
                )
                
            }
        }
    }
}


#Preview {
    let cvm = ComponentViewModel()
    Gabinete()
        .environment(cvm)
}
