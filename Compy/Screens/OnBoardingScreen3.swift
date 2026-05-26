//
//  OnBoardingScreen3.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen3: View {
    var body: some View {
        OnBoardingEnvironment {
            VStack {
                Text("Este será o seu ambiente:")
                    .font(Font.custom("IosevkaCharon-Bold", size: 32))
                    .padding(.bottom, 5)
                
                Text("Ele é composto pelo gabinete e pelo monitor")
                    .font(Font.custom("IosevkaCharon-Regular",size: 16))
                
                Spacer()
                
                ZStack {
                    Image(.ambienteDeInteracao)
                    
                    VStack {
                        HStack(spacing: 30) {
                            Image(.desktopOnBoarding)
                            
                            Image(.monitorAmbienteOnBoarding)
                        }
                        
                        NavigationButtonContainer(pageNumber: "3")
                            .padding(.horizontal, 25)
                    }
                }
                .padding(.bottom, -10)
            }
            .padding(40)
        }
    }
}

#Preview {
    OnBoardingScreen3()
}
