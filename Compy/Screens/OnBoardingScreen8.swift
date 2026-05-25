//
//  OnBoardingScreen8.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 25/05/26.
//
import SwiftUI

struct OnBoardingScreen8: View {
    var body: some View {
        OnBoardingEnvironment{
            VStack{
                Text("Caso você se esqueça...")
                    .font(Font.custom("IosevkaCharon-Bold", size: 32))
                    .padding(.bottom, 5)
                
                Text("Se tiver alguma dúvida e quiser rever esse passo a passo, toque no botão de tutorial e mostrarei ele novamente.")
                    .font(Font.custom("IosevkaCharon-Regular",size: 16))
                    .multilineTextAlignment(.center)
                    .padding(5)
                
                Spacer()
                
                Image("CompyTutorialImg")
                
                Spacer()
                
                NavigationButtonContainer(pageNumber: "8/9")
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen8()
}
