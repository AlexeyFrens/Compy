//
//  Gabinete.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
//import SwiftUI
//
//struct Gabinete: View {
//
//    //Destacar a peça selecionada com stroke verde agua
//    @State private var pecaSelecionada: String = ""
//
//    //selecionar o índice do array com as infos sobre a peça
//    @Environment(ComponentViewModel.self) var component
//
//    var body: some View {
//
//        GeometryReader { geo in
//
//            ZStack {
//
//                //Imagem do gabinete sem peças
//                Image("GabineteVazio")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(
//                        width: geo.size.width * 0.4,
//                        height: geo.size.height * 0.7
//                    )
//
//                //Processador
//                Button {
//                    component.parameterBar.PecaIndex = 0
//                    print("Você clicou no Processador")
//                    pecaSelecionada = "Processador"
//                } label: {
//
//                    Image("Processador")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: geo.size.width * 0.04)
//
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(
//                                    pecaSelecionada == "Processador"
//                                    ? Color.cyan
//                                    : Color.clear,
//
//                                    lineWidth: 3
//                                )
//                        )
//                }
//                //posiçao das peças
//                .position(
//                    x: geo.size.width * 0.468,
//                    y: geo.size.height * 0.355
//                )
//
//                //Placa de video
//                Button {
//                    component.parameterBar.PecaIndex = 1
//                    print("Você clicou na Placa de Video")
//                    pecaSelecionada = "Placa de Video"
//                } label: {
//
//                    Image("PlacaDeVideo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: geo.size.width * 0.18)
//
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(
//                                    pecaSelecionada == "Placa de Video"
//                                    ? Color.cyan
//                                    : Color.clear,
//
//                                    lineWidth: 3
//                                )
//                        )
//                }
//                //posiçao das peças
//                .position(
//                    x: geo.size.width * 0.47,
//                    y: geo.size.height * 0.525
//                )
//
//                //HD - Armazenamento
//                Button {
//                    component.parameterBar.PecaIndex = 2
//                    print("Voce clicou no HD")
//                    pecaSelecionada = "HD"
//                } label: {
//
//                    Image("HD")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: geo.size.width * 0.05)
//
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(
//                                    pecaSelecionada == "HD"
//                                    ? Color.cyan
//                                    : Color.clear,
//
//                                    lineWidth: 3
//                                )
//                        )
//                }
//                //posiçao das peças
//                .position(
//                    x: geo.size.width * 0.575,
//                    y: geo.size.height * 0.50
//                )
//
//                //Memória RAM
//                Button {
//                    component.parameterBar.PecaIndex = 3
//                    print("Voce clicou na Memória RAM")
//                    pecaSelecionada = "RAM"
//
//                } label: {
//
//                    Image("MemoriaRam")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: geo.size.width * 0.035)
//
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(
//                                    pecaSelecionada == "RAM"
//                                    ? Color.cyan
//                                    : Color.clear,
//
//                                    lineWidth: 3
//                                )
//                        )
//                }
//                //posiçao das peças
//                .position(
//                    x: geo.size.width * 0.515,
//                    y: geo.size.height * 0.355
//                )
//
//
//                //Fonte
//                Button {
//                    component.parameterBar.PecaIndex = 4
//                    print("Você clicou na Fonte")
//                    pecaSelecionada = "Fonte"
//                } label: {
//
//                    Image("Fonte")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: geo.size.width * 0.095)
//
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(
//                                    pecaSelecionada == "Fonte"
//                                    ? Color.cyan
//                                    : Color.clear,
//
//                                    lineWidth: 3
//                                )
//                        )
//                }
//                //posiçao das peças
//                .position(
//                    x: geo.size.width * 0.44,
//                    y: geo.size.height * 0.72
//                )
//
//            }
//        }
//    }
//}
//import SwiftUI
//
//struct Gabinete: View {
//    
//    // Destacar a peça selecionada com stroke verde agua
//    @State private var pecaSelecionada: String = ""
//    
//    // selecionar o índice do array com as infos sobre a peça
//    @Environment(ComponentViewModel.self) var component
//    
//    //Animação
//    @State private var animarPulso = false
//    
//    var body: some View {
//        // 1. A imagem base dita o tamanho real do componente
//        Image("GabineteVazio")
//            .resizable()
//            .scaledToFit()
//            .overlay(
//                // 2. O GeometryReader dentro do overlay garante que as coordenadas
//                // mudem na mesma proporção do desenho do gabinete entre iPhone/iPad
//                GeometryReader { geo in
//                    ZStack {
//                        
//                        // --- PROCESSADOR ---
//                        Button {
//                            component.parameterBar.PecaIndex = 0
//                            print("Você clicou no Processador")
//                            pecaSelecionada = "Processador"
//                        } label: {
//                            Image("Processador")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.12)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "Processador" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "Processador" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.390, y: geo.size.height * 0.290)
//                        
//                        // --- PLACA DE VÍDEO ---
//                        Button {
//                            component.parameterBar.PecaIndex = 1
//                            print("Você clicou na Placa de Video")
//                            pecaSelecionada = "Placa de Video"
//                        } label: {
//                            Image("PlacaDeVideo")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.66)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "Placa de Video" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "PlacaDeVideo" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.382, y: geo.size.height * 0.530)
//                        
//                        // --- HD (ARMAZENAMENTO) ---
//                        Button {
//                            component.parameterBar.PecaIndex = 2
//                            print("Voce clicou no HD")
//                            pecaSelecionada = "HD"
//                        } label: {
//                            Image("HD")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.14)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "HD" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "HD" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.780, y: geo.size.height * 0.580)
//                        
//                        // --- MEMÓRIA RAM ---
//                        Button {
//                            component.parameterBar.PecaIndex = 3
//                            print("Voce clicou na Memória RAM")
//                            pecaSelecionada = "RAM"
//                        } label: {
//                            Image("MemoriaRam")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.14)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "RAM" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "MemoriaRam" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.555, y: geo.size.height * 0.290)
//                        
//                        // --- FONTE ---
//                        Button {
//                            component.parameterBar.PecaIndex = 4
//                            print("Você clicou na Fonte")
//                            pecaSelecionada = "Fonte"
//                        } label: {
//                            Image("Fonte")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.34)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "Fonte" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "Fonte" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.260, y: geo.size.height * 0.816)
//                        
//                    }
//                }
//            )
//    }
//        .onAppear {
//            withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
//                animarPulso = true
//            }
//        }
//}
//}


//CODIGO COM ANIMACAO 1
//import SwiftUI
//
//struct Gabinete: View {
//    
//    // Destacar a peça selecionada com stroke verde agua
//    @State private var pecaSelecionada: String = ""
//    
//    // selecionar o índice do array com as infos sobre a peça
//    @Environment(ComponentViewModel.self) var component
//    
//    //Animação
//    @State private var animarPulso = false
//    
//    var body: some View {
//        // 1. A imagem base dita o tamanho real do componente
//        Image("GabineteVazio")
//            .resizable()
//            .scaledToFit()
//            .overlay(
//                // 2. O GeometryReader dentro do overlay garante que as coordenadas
//                // mudem na mesma proporção do desenho do gabinete entre iPhone/iPad
//                GeometryReader { geo in
//                    ZStack {
//                        
//                        // --- PROCESSADOR ---
//                        Button {
//                            component.parameterBar.PecaIndex = 0
//                            print("Você clicou no Processador")
//                            pecaSelecionada = "Processador"
//                        } label: {
//                            Image("Processador")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.12)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "Processador" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "Processador" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.390, y: geo.size.height * 0.290)
//                        
//                        // --- PLACA DE VÍDEO ---
//                        Button {
//                            component.parameterBar.PecaIndex = 1
//                            print("Você clicou na Placa de Video")
//                            pecaSelecionada = "Placa de Video"
//                        } label: {
//                            Image("PlacaDeVideo")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.66)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "Placa de Video" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "Placa de Video" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.382, y: geo.size.height * 0.530)
//                        
//                        // --- HD (ARMAZENAMENTO) ---
//                        Button {
//                            component.parameterBar.PecaIndex = 2
//                            print("Voce clicou no HD")
//                            pecaSelecionada = "HD"
//                        } label: {
//                            Image("HD")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.14)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "HD" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "HD" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.780, y: geo.size.height * 0.580)
//                        
//                        // --- MEMÓRIA RAM ---
//                        Button {
//                            component.parameterBar.PecaIndex = 3
//                            print("Voce clicou na Memória RAM")
//                            pecaSelecionada = "RAM"
//                        } label: {
//                            Image("MemoriaRam")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.14)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "RAM" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        // CORRIGIDO: Mudado de "MemoriaRam" para "RAM" para bater com a State
//                                        .scaleEffect(pecaSelecionada == "RAM" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.555, y: geo.size.height * 0.290)
//                        
//                        // --- FONTE ---
//                        Button {
//                            component.parameterBar.PecaIndex = 4
//                            print("Você clicou na Fonte")
//                            pecaSelecionada = "Fonte"
//                        } label: {
//                            Image("Fonte")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geo.size.width * 0.34)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 8)
//                                        .stroke(pecaSelecionada == "Fonte" ? Color.cyan : Color.clear, lineWidth: 3)
//                                        .scaleEffect(pecaSelecionada == "Fonte" && animarPulso ? 1.05 : 1.0)
//                                )
//                        }
//                        .position(x: geo.size.width * 0.260, y: geo.size.height * 0.816)
//                        
//                    }
//                }
//            )
//            .onAppear {
//                withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
//                    animarPulso = true
//                }
//            }
//    }
//}
import SwiftUI

struct Gabinete: View {
    // selecionar o índice do array com as infos sobre a peça
    @Environment(ComponentViewModel.self) var component
    
    // destacar a peça selecionada com stroke verde agua
    @State private var pecaSelecionada: String = ""
    
    // var para rodar a animação quando peça for selecionada
    @State private var animarPulso = false
    
    var body: some View {
        // imagem do gabinete vazio é o pai dessa view, então a proporção das peças vão mudar em relação a ele
        Image("GabineteVazio")
            .resizable()
            .scaledToFit()
            .overlay(
                //o GeometryReader dentro do overlay garante que as coordenadas das peças mudem junto com o gabinete
                GeometryReader { geo in
                    ZStack {
                        
                        //PROCESSADOR
                        Button {
                            component.parameterBar.PecaIndex = 0
                            print("Você clicou no Processador")
                            pecaSelecionada = "Processador"
                        } label: {
                            Image("Processador")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.12)
                                // MUDANÇA: Efeitos aplicados direto na Imagem agora
                                .scaleEffect(pecaSelecionada == "Processador" && animarPulso ? 1.4 : 1.0)
                                .opacity(pecaSelecionada == "Processador" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "Processador" ? Color.cyan : Color.clear, lineWidth: 3)
                                        // O .scaleEffect antigo que estava aqui foi REMOVIDO
                                )
                        }
                        .position(x: geo.size.width * 0.390, y: geo.size.height * 0.290)
                        
                        // --- PLACA DE VÍDEO ---
                        Button {
                            component.parameterBar.PecaIndex = 1
                            print("Você clicou na Placa de Video")
                            pecaSelecionada = "Placa de Video"
                        } label: {
                            Image("PlacaDeVideo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.66)
                                // MUDANÇA: Efeitos aplicados direto na Imagem agora
                                .scaleEffect(pecaSelecionada == "Placa de Video" && animarPulso ? 1.09 : 1.0)
                                .opacity(pecaSelecionada == "Placa de Video" && animarPulso ? 1.0 : 0.7)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "Placa de Video" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.382, y: geo.size.height * 0.530)
                        
                        // --- HD (ARMAZENAMENTO) ---
                        Button {
                            component.parameterBar.PecaIndex = 2
                            print("Voce clicou no HD")
                            pecaSelecionada = "HD"
                        } label: {
                            Image("HD")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.14)
                                // MUDANÇA: Efeitos aplicados direto na Imagem agora
                                .scaleEffect(pecaSelecionada == "HD" && animarPulso ? 1.08 : 1.0)
                                .opacity(pecaSelecionada == "HD" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "HD" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.780, y: geo.size.height * 0.580)
                        
                        // --- MEMÓRIA RAM ---
                        Button {
                            component.parameterBar.PecaIndex = 3
                            print("Voce clicou na Memória RAM")
                            pecaSelecionada = "RAM"
                        } label: {
                            Image("MemoriaRam")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.14)
                                // MUDANÇA: Efeitos aplicados direto na Imagem agora
                                .scaleEffect(pecaSelecionada == "RAM" && animarPulso ? 1.1 : 1.0)
                                .opacity(pecaSelecionada == "RAM" && animarPulso ? 1.0 : 0.6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(pecaSelecionada == "RAM" ? Color.cyan : Color.clear, lineWidth: 3)
                                )
                        }
                        .position(x: geo.size.width * 0.555, y: geo.size.height * 0.290)
                        
                        // --- FONTE ---
                        Button {
                            component.parameterBar.PecaIndex = 4
                            print("Você clicou na Fonte")
                            pecaSelecionada = "Fonte"
                        } label: {
                            Image("Fonte")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.34)
                                // MUDANÇA: Efeitos aplicados direto na Imagem agora
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
            // MANTÉM: O gatilho que faz o loop da animação acontecer
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
