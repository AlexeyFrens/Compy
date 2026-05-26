//
//  OnBoardingScreen1.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct OnBoardingScreen1: View {
    
    var pageNumber: String? = "1"
    var totalPages: String?
    
    var body: some View {
        OnBoardingEnvironment(hasCompyMascot: false) {
            VStack {
                Text("Olá, eu sou o Compy!")
                    .font(Font.custom("IosevkaCharon-Bold", size: 36))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                Image(.compyMascote)
                
                Spacer()
                
                NavigationButtonContainer(hasTwoButtons: false, pageNumber: pageNumber!)
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen1()
}
