//
//  OnBoardingScreen4.swift
//  Compy
//
//  Created by Sarah Freitas on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen4: View {
    var body: some View {
        OnBoardingEnvironment {
            VStack{
            
                Spacer()
                
            Text ("Esse é o gabinete")
                .font(Font.custom("IosevkaCharon-Bold", size: 32))
                .foregroundStyle(.textos)
                .padding(5)
            
                Spacer()
                
                Image(.gabineteOnBoarding)
                
                Spacer ()
                
                Text ("É nele que as peças de hardware estarão para você manipular. Que tal darmos uma olhada mais de perto?")
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(Font.custom("IosevkaCharon-Regular", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.textos)
                    .padding(5)
                
                Spacer()
                
                NavigationButtonContainer(pageNumber:"4")
                
            }
            .padding(50)
        }
    }
}

#Preview {
    OnBoardingScreen4()
}
