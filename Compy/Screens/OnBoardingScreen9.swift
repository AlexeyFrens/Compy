//
//  OnBoardingScreen9.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen9: View {
    
    var pageNumber: String? = "9"
    var totalPages: String?
    
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment(hasSkipButton: false) {
            VStack {
                Text("Agora é com você!")
                    .font(Font.custom("IosevkaCharon-Bold", size: isIphone ? 36 : 64))
                    .foregroundStyle(.textos)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                NavigationButtonContainer(pageNumber: pageNumber!, totalPages: "9",nextRoute: .mainScreen)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea()
                    .padding(isIphone ? 50 : 100)
                    .padding(.bottom, isIphone ? 0 : 80)
            )
        }
    }
}

#Preview {
    OnBoardingScreen9()
}
