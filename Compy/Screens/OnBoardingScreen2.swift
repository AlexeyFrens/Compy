//
//  OnBoardingScreen2.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct OnBoardingScreen2: View {
    
    var pageNumber: String? = "2"
    var totalPages: String?
    
    var body: some View {
        OnBoardingEnvironment {
            VStack {
                
                Spacer()
                
                Text("Vou te ajudar a entender como os principais componentes físicos de um computador funcionam.")
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(Font.custom("IosevkaCharon-Regular",size: 28))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Text("Mas antes de começar, vou mostrar como interagir com as nossas peças!")
                    .font(Font.custom("IosevkaCharon-Regular",size: 28))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                NavigationButtonContainer(pageNumber: pageNumber!)
            }
            .padding(49)
        }
    }
}

#Preview {
    OnBoardingScreen2()
}
