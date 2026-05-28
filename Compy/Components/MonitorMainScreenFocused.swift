//
//  MonitorMainScreenFocused.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 28/05/26.
//

import SwiftUI

struct MonitorMainScreenFocused: View {
    
    @Environment(ComponentViewModel.self) var componentViewModel
    @State private var situationTextKey = ""
    let componentSelected: ParameterBarModel
    let specificationIndex: Int
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
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
    
    func getImage(componentName: String) -> UIImage {
        switch componentName {
        case "Memória RAM":
            return .memoriaRam
        case "Placa de Vídeo":
            return .placaDeVideo
        case "Fonte":
            return .fonte
        case "Armazenamento":
            return .HD
        case "Processador":
            return .processador
        default:
            return .HD
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                VStack() {
                    Image(uiImage: getImage(componentName: componentSelected.pieceName))
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: geometry.size.height * 0.4)
                    
                    HStack {
                        Text(componentSelected.dropDown[specificationIndex].quantity.formatted())
                            .foregroundStyle(.textos)
                            .font(.custom("IosevkaCharon-Bold", size: isIphone ? 16 : 30))
                        
                        Text(componentSelected.dropDown[specificationIndex].un)
                            .foregroundStyle(.textos)
                            .font(.custom("IosevkaCharon-Bold", size: isIphone ? 16 : 30))
                    }
                    .padding(10)
                    .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.textos, lineWidth: 1)
                    )
                }
                .frame(maxWidth: geometry.size.width * 0.4)
                
                Spacer()
                
                VStack {
                    Text(componentViewModel.getSituationText(key: translateKey(componentName: componentSelected.pieceName, specification: componentSelected.dropDown[specificationIndex].name)))
                        .foregroundStyle(.textos)
                        .font(.custom("IosevkaCharon-Medium", size: isIphone ? 16 : 24))
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: geometry.size.width * 0.6)
            }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.fundoMonitor)
        }
    }
}

#Preview {
    let parameterBarModel = ParameterBarModel(
        pieceName: "Memória RAM",
        dropDown:[
            SpecificationModel(name: "Tamanho", quantity: 0, un:"GB")
        ],
        about: "A memória RAM guarda temporariamente os dados dos programas que estão sendo usados no momento para deixá-los mais rápidos. Ela funciona como a memória de curto prazo do computador. Igual quando você abre 27 abas no navegador e promete que vai ler depois. Mas tem um detalhe: quando o computador desliga, tudo o que estava nela é apagado.")
    let cvm = ComponentViewModel()
    MonitorMainScreenFocused(componentSelected: parameterBarModel, specificationIndex: 0)
        .environment(cvm)
}
