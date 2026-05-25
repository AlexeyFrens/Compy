//
//  OnBoardingScreen2.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct OnBoardingScreen2: View {
    var body: some View {
        OnBoardingEnvironment {
            VStack {
                Text("Vou te ajudar a entender como os principais componentes físicos de um computador funcionam.")
                    .font(.system(size: 28))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Text("Mas antes de começar, vou mostrar como interagir com as nossas peças!")
                    .font(.system(size: 28))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                NavigationButtonContainer()
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen2()
}
