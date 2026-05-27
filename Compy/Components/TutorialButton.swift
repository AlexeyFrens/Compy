//
//  TutorialButton.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct TutorialButton: View {
    
    var body: some View {
        
        //o botão está chamando a tela 4 do OnBoarding
        NavigationLink {
            OnBoardingScreen4()
        } label: {
            Image("CompyTutorialImg")
        }
    }
}

#Preview {
    TutorialButton()
}

