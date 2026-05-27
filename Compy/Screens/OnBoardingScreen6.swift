//
//  OnBoardingScreen6.swift
//  Compy
//
//  Created by Sarah Freitas on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen6: View {
    
    var pageNumber: String? = "6"
    var totalPages: String?
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment {
            VStack{
                
                Spacer()
                
                Text ("Personalize os componentes")
                    .font(Font.custom("IosevkaCharon-Bold", size: isIphone ? 32 : 64))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Spacer()
                
                Text ("Cada componente possui especificações e você poderá alterá-las na barra do exemplo abaixo:")
                    .font(Font.custom("IosevkaCharon-Medium",size: isIphone ? 16 : 26))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Spacer()
                
                Image(.recorteMemoriaRam)
                
                Spacer()
                
              NavigationButtonContainer(pageNumber: pageNumber!)
            }
            .padding(isIphone ? 50 : 100)
            .padding(.bottom, isIphone ? 0 : 80)
        }
    }
}

#Preview {
    OnBoardingScreen6()
}
