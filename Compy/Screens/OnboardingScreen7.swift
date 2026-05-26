//
//  OnboardingScreen7.swift
//  Compy
//
//  Created by Sarah Freitas on 25/05/26.
//

import SwiftUI

struct OnboardingScreen7: View {
    var body: some View {
        OnBoardingEnvironment {
            VStack {
                
                Text ("Personalize os componentes")
                    .font(Font.custom("IosevkaCharon-Bold", size: 32))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
        
                Spacer()
                
                HStack {
                    Text ("Para ver a configuração de todas as peças, basta tocar no ícone que estará do lado direito da tela e elas aparecerão no monitor.")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(Font.custom("IosevkaCharon-Regular", size: 16))
                        .multilineTextAlignment(.center)
                    
                    Image(.onBoarding7)
                        .frame(width: 280, height: 150)
                    
                }
                NavigationButtonContainer(pageNumber:"7")
                
                Spacer()
            }
            .padding(49)
        }
    }
}

#Preview {
    OnboardingScreen7()
}
