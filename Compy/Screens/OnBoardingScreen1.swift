//
//  OnBoardingScreen1.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct OnBoardingScreen1: View {
    var body: some View {
        OnBoardingEnvironment(hasCompyMascot: false) {
            VStack {
                Text("Olá, eu sou o Compy!")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                Image(.compyMascote)
                
                Spacer()
                
                NavigationButtonContainer(hasTwoButtons: false)
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen1()
}
