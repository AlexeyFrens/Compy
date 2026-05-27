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
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment(hasCompyMascot: false) {
            VStack {
                Text("Olá, eu sou o Compy!")
                    .font(Font.custom("IosevkaCharon-Bold", size: isIphone ? 36 : 64))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                Image(.compyMascote)
                
                Spacer()
                
                NavigationButtonContainer(hasTwoButtons: false, pageNumber: pageNumber!,nextRoute: .screenOnboarding2)
            }
            .padding(isIphone ? 50 : 100)
            .padding(.bottom, isIphone ? 0 : 40)
        }
    }
}

#Preview {
    OnBoardingScreen1()
}
