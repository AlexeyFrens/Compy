//
//  OnBoardingScreen9.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen9: View {
    
    var pageNumber: String? = "9"
    var totalPages: String?
    
    var body: some View {
        OnBoardingEnvironment(hasSkipButton: false) {
            VStack {
                Text("Agora é com você!")
                    .font(Font.custom("IosevkaCharon-Bold", size: 36))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                NavigationButtonContainer(pageNumber: pageNumber!)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea()
                    .padding(50)
            )
        }
    }
}

#Preview {
    OnBoardingScreen9()
}
