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
                    .font(.system(size: 32, weight: .bold))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Text ("Cada componente possui especificações e você poderá alterá-las na barra do exemplo abaixo:")
                    .font(.system(size: 16,weight: .regular))
                    .foregroundStyle(.textos)
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Spacer()
                
                Image(.recorteMemoriaRam)
                
                Spacer()
                
              NavigationButtonContainer(pageNumber:"6/9")
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen6()
}
