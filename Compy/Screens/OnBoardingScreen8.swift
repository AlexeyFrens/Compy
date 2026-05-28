//
//  OnBoardingScreen8.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 25/05/26.
//
import SwiftUI

struct OnBoardingScreen8: View {
    
    var pageNumber: String? = "8"
    var totalPages: String?
    
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment{
            VStack{
                Text("Caso você se esqueça...")
                    .font(Font.custom("IosevkaCharon-Bold", size: isIphone ? 32 : 64))
                    .padding(.bottom, 5)
                    .foregroundStyle(.textos)
                
                Text("Se tiver alguma dúvida e quiser rever esse passo a passo, toque no botão de tutorial e mostrarei ele novamente.")
                    .font(Font.custom("IosevkaCharon-Medium",size: isIphone ? 16 : 28))
                    .multilineTextAlignment(.center)
                    .padding(5)
                    .foregroundStyle(.textos)
                
                Spacer()
                
                Image("CompyTutorialImg")
                
                Spacer()
                
                NavigationButtonContainer(pageNumber: pageNumber!, totalPages: "9",nextRoute: .screenOnboarding9)
            }
            .padding(isIphone ? 50 : 100)
            .padding(.bottom, isIphone ? 0 : 80)
        }
    }
}

#Preview {
    OnBoardingScreen8()
}
