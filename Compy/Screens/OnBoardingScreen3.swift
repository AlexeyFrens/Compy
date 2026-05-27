//
//  OnBoardingScreen3.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen3: View {
    
    var pageNumber: String? = "3"
    var totalPages: String?
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment(hasCompyMascot: isIphone ? true : false) {
            VStack {
                Text("Este será o seu ambiente:")
                    .font(Font.custom("IosevkaCharon-Bold", size: isIphone ? 32 : 64))
                    .foregroundStyle(.textos)
                
                Text("Ele é composto pelo gabinete e pelo monitor")
                    .font(Font.custom("IosevkaCharon-Medium",size: isIphone ? 16 : 26))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                ZStack {
                    Image(.ambienteDeInteracao)
                    
                    VStack {
                        HStack(spacing: 30) {
                            Image(.desktopOnBoarding)
                            
                            Image(.monitorAmbienteOnBoarding)
                        }
                        
                        NavigationButtonContainer(pageNumber: pageNumber!)
                            .padding(.horizontal, 25)
                    }
                }
                .padding(.bottom, -10)
            }
            .padding(isIphone ? 40 : 80)
            .padding(.bottom, isIphone ? 0 : 15)
        }
    }
}

#Preview {
    OnBoardingScreen3()
}
