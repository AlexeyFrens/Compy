//
//  MonitorMainScreen.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 27/05/26.
//

import SwiftUI

struct MonitorMainScreen: View {
    
    @Environment(ComponentViewModel.self) var componentViewModel
    @State private var buttonFocused = "Memória RAM"
    @State private var situationTextKey = ""
    @State private var componentSelected: ParameterBarModel?
    
    func getComponentSelected() -> ParameterBarModel {
        for component in componentViewModel.pecas {
            if component.pieceName == "Memória RAM" {
                return component
            }
        }
        
        return ParameterBarModel(pieceName: "", dropDown: [], about: "")
    }
    
    func translateKey(word: String) -> String {
        switch word {
        case "Memória RAM":
            return "memory"
        case "Placa de Vídeo":
            return "videoCardClock"
        case "Fonte":
            return "powerSupply"
        case "Armazenamento":
            return "storage"
        case "Processador":
            return "processorCore"
        default:
            return ""
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                HStack {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundStyle(.textos)
                    Text("Valores Gerais dos Componentes")
                        .font(.custom("IosevkaCharon-Bold", size: 16))
                }
                .padding(.horizontal, 26)
                .padding(.vertical, 8)
                
                Rectangle()
                    .foregroundStyle(.variantes)
                    .frame(maxWidth: .infinity, maxHeight: 2)
                
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        ForEach(componentViewModel.pecas) { component in
                            VStack() {
                                Button(action: {
                                    buttonFocused = component.pieceName
                                    componentSelected = component
                                }, label: {
                                    BotaoMonitorMainScreen(componentName: component.pieceName)
                                })
                                .padding()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(buttonFocused == component.pieceName ? .accent : .fundoMonitor)
                                .overlay(alignment: .bottom){
                                    if component.pieceName != "Processador" {
                                        Rectangle()
                                            .foregroundStyle(.variantes)
                                            .frame(height: 2)
                                    }
                                }
                            }
                        }
                        
                    }
                    .frame(maxWidth: geometry.size.width * 0.45)
                    
                    Rectangle()
                        .frame(maxWidth: 2, maxHeight: .infinity)
                        .foregroundStyle(.variantes)
                    
                    VStack {
                        HStack {
                            Text(componentSelected?.dropDown[0].name ?? "")
                                .font(.custom("IosevkaCharon-Bold", size: 12))
                            Spacer()
                            HStack {
                                Text(componentSelected?.dropDown[0].quantity.formatted() ?? "")
                                    .font(.custom("IosevkaCharon-Bold", size: 12))
                                
                                Text(componentSelected?.dropDown[0].un ?? "")
                                    .font(.custom("IosevkaCharon-Bold", size: 12))
                            }
                        }
                        
                        Spacer()
                        
                        Text(componentViewModel.getSituationText(key: translateKey(word: componentSelected?.pieceName ?? "")))
                            .font(.custom("IosevkaCharon-Regular", size: 12))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                    .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.fundoMonitor)
        }
        .onAppear() {
            componentSelected = getComponentSelected()
        }
    }
}

#Preview {
    let cvm = ComponentViewModel()
    MonitorMainScreen()
        .environment(cvm)
}
