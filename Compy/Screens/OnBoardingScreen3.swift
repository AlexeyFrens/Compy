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
                    .font(.system(size: 32, weight: .bold))
                    .padding(.bottom, 5)
                
                Text("Ele é composto pelo gabinete e pelo monitor")
                    .font(.system(size: 16, weight: .medium))
                
                Spacer()
                
                ZStack {
                    Image(.ambienteDeInteracao)
                    
                    VStack {
                        HStack(spacing: 30) {
                            Image(.desktopOnBoarding)
                            
                            Image(.monitorAmbienteOnBoarding)
                        }
                        
                        NavigationButtonContainer(pageNumber: "3/9")
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
