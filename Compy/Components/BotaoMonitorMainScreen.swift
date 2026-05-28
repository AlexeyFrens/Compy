//
//  BotaoMonitorMainScreen.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 27/05/26.
//

import SwiftUI

struct BotaoMonitorMainScreen: View {
    
    var componentName: String
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    func getComponentImage() -> UIImage {
        switch componentName {
        case "Memória Ram":
            return .memoriaRamMainScreen
        case "Placa de Vídeo":
            return .placaDeVideoMainScreen
        case "Fonte":
            return .fonteMainScreen
        case "Armazenamento":
            return .armazenamentoMainScreen
        case "Processador":
            return .processadorMainScreen
        default:
            return .memoriaRamMainScreen
        }
    }
    
    var body: some View {
        HStack {
            Image(uiImage: getComponentImage())
                .padding(.trailing, 10)
            Text(componentName)
                .font(.custom("IosevkaCharon-Bold", size: isIphone ? 12 : 20))
                .foregroundStyle(.textos)
            Spacer()
            Image(systemName: "arrow.right")
                .foregroundStyle(.textos)
                .font(.system(size: isIphone ? 12 : 16, weight: .black))
        }
    }
}
