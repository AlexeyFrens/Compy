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
    @State private var specificationFocused = 0
    
    func getComponentSelected() -> ParameterBarModel {
        for component in componentViewModel.pecas {
            if component.pieceName == "Memória RAM" {
                return component
            }
        }
        
        return ParameterBarModel(pieceName: "", dropDown: [], about: "")
    }
    
    func translateKey(componentName: String, specification: String) -> String {
        
        if componentName == "Memória RAM" {
            return "memory"
        } else if componentName == "Placa de Vídeo" && specification == "Núcleos" {
            return "videoCardClock"
        } else if componentName == "Placa de Vídeo" && specification == "VRAM" {
            return "videoCardVram"
        } else if componentName == "Fonte" {
            return "powerSupply"
        } else if componentName == "Armazenamento" {
            return "storage"
        } else if componentName == "Processador" && specification == "Frequência" {
            return "processorSpeed"
        } else if componentName == "Processador" && specification == "Núcleos" {
            return "processorCore"
        } else {
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
                        .foregroundStyle(.textos)
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
                                    withAnimation(.spring){
                                        buttonFocused = component.pieceName
                                        componentSelected = component
                                    }
                                }, label: {
                                    BotaoMonitorMainScreen(componentName: component.pieceName)
                                        .padding()
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                })
                                .clipShape(Rectangle())
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
                        if componentSelected?.dropDown.count == 1 {
                            HStack {
                                Text(componentSelected?.dropDown[0].name ?? "")
                                    .font(.custom("IosevkaCharon-Bold", size: 12))
                                    .foregroundStyle(.textos)
                                Spacer()
                                HStack {
                                    Text(componentSelected?.dropDown[0].quantity.formatted() ?? "")
                                        .font(.custom("IosevkaCharon-Bold", size: 12))
                                        .foregroundStyle(.textos)
                                    
                                    Text(componentSelected?.dropDown[0].un ?? "")
                                        .font(.custom("IosevkaCharon-Bold", size: 12))
                                        .foregroundStyle(.textos)
                                }
                            }
                        } else {
                            HStack {
                                Button(action: {
                                    withAnimation(.spring) {
                                        specificationFocused = 0
                                    }
                                }, label: {
                                    VStack(spacing: 5) {
                                        Text(componentSelected?.dropDown[0].name ?? "")
                                            .font(.custom("IosevkaCharon-Bold", size: 12))
                                            .foregroundStyle(.textos)
                                        HStack {
                                            Text(componentSelected?.dropDown[0].quantity.formatted() ?? "")
                                                .font(.custom("IosevkaCharon-Bold", size: 12))
                                                .foregroundStyle(.textos)
                                            
                                            Text(componentSelected?.dropDown[0].un ?? "")
                                                .font(.custom("IosevkaCharon-Bold", size: 12))
                                                .foregroundStyle(.textos)
                                        }
                                    }
                                })
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(specificationFocused == 0 ? Color.accent : Color.clear)
                                .cornerRadius(10)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(specificationFocused == 0 ? .clear : .variantes, lineWidth: 1)
                                )

                                Button(action: {
                                    withAnimation(.spring) {
                                        specificationFocused = 1
                                    }
                                }, label: {
                                    VStack(spacing: 5) {
                                        Text(componentSelected?.dropDown[1].name ?? "")
                                            .font(.custom("IosevkaCharon-Bold", size: 12))
                                            .foregroundStyle(.textos)
                                        HStack {
                                            Text(componentSelected?.dropDown[1].quantity.formatted() ?? "")
                                                .font(.custom("IosevkaCharon-Bold", size: 12))
                                                .foregroundStyle(.textos)
                                            
                                            Text(componentSelected?.dropDown[1].un ?? "")
                                                .font(.custom("IosevkaCharon-Bold", size: 12))
                                                .foregroundStyle(.textos)
                                        }
                                    }
                                })
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .background(specificationFocused == 1 ? Color.accent : Color.clear)
                                .cornerRadius(10)
                                .overlay(
                                       RoundedRectangle(cornerRadius: 10)
                                        .stroke(specificationFocused == 1 ? .clear : .variantes, lineWidth: 1)
                                )
                            }
                        }
                        
                        Spacer()
                        
                        if componentSelected?.dropDown.count != 1 {
                            Text(componentViewModel.getSituationText(key: translateKey(componentName: componentSelected?.pieceName ?? "", specification: componentSelected?.dropDown[specificationFocused == 0 ? 0 : 1].name ?? "")))
                                .font(.custom("IosevkaCharon-Regular", size: 12))
                                .foregroundStyle(.textos)
                                .multilineTextAlignment(.center)
                        } else {
                            Text(componentViewModel.getSituationText(key: translateKey(componentName: componentSelected?.pieceName ?? "", specification: "")))
                                .font(.custom("IosevkaCharon-Regular", size: 12))
                                .foregroundStyle(.textos)
                                .multilineTextAlignment(.center)
                        }
                        
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
