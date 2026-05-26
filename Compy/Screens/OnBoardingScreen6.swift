//
//  OnBoardingScreen6.swift
//  Compy
//
//  Created by Sarah Freitas on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen6: View {
    var body: some View {
        OnBoardingEnvironment {
            VStack{
                
                Spacer()
                
                Text ("Personalize os componentes")
                    .font(Font.custom("IosevkaCharon-Bold", size: 32))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Text ("Cada componente possui especificações e você poderá alterá-las na barra do exemplo abaixo:")
                    .font(Font.custom("IosevkaCharon-Regular",size: 16))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Spacer()
                
                Image(.recorteMemoriaRam)
                
                Spacer()
                
              NavigationButtonContainer(pageNumber:"6")
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen6()
}
