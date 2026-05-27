//
//  OnboardingScreen7.swift
//  Compy
//
//  Created by Sarah Freitas on 25/05/26.
//

import SwiftUI

struct OnboardingScreen7: View {
    
    var pageNumber: String? = "7"
    var totalPages: String?
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment {
            VStack {
                
                Text ("Personalize os componentes")
                    .font(Font.custom("IosevkaCharon-Bold", size: isIphone ? 32 : 64))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
        
                Spacer()
                
                HStack {
                    Text ("Para ver a configuração de todas as peças, basta tocar no ícone que estará do lado direito da tela e elas aparecerão no monitor.")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(Font.custom("IosevkaCharon-Medium", size: isIphone ? 16 : 26))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Image(.onBoarding7)
                    
                }
                
                Spacer()
                
                NavigationButtonContainer(pageNumber: pageNumber!)
            }
            .padding(isIphone ? 50 : 100)
            .padding(.bottom, isIphone ? 0 : 80)
        }
    }
}

#Preview {
    OnboardingScreen7()
}
