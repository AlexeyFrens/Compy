//
//  OnBoardingScreen5.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen5: View {
    
    var pageNumber: String? = "5"
    var totalPages: String?
    
    var body: some View {
        OnBoardingEnvironment {
            VStack {
                HStack {
                    VStack {
                        Text("Interaja com os componentes")
                            .font(.custom("IosevkaCharon-Bold", size: 32))
                            .foregroundStyle(.textos)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        Text("Os componentes disponíveis para personalização estarão destacados.")
                            .font(.custom("IosevkaCharon-Regular", size: 15))
                            .foregroundStyle(.textos)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 5)
                        
                        Text("**Selecione** algum componente e **personalize** suas especificações")
                            .font(.custom("IosevkaCharon-Regular", size: 15))
                            .foregroundStyle(.textos)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Image(.placaMaeOnBoarding)
                }
                
                Spacer()
                
                NavigationButtonContainer(pageNumber: pageNumber!)
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen5()
}
