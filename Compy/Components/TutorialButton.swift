//
//  TutorialButton.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct TutorialButton: View {
    
    @EnvironmentObject var routerNavigation: NavigationRouter
    @Environment(ComponentViewModel.self) var componentViewModel
    
    var body: some View {
        
        //o botão está chamando a tela 4 do OnBoarding
        Button(action: {
            routerNavigation.push(to: .screenOnboarding4(isTutorial: true))
        }) {
            Image(.compyTutorialButton)
        }
    }
}

#Preview {
    TutorialButton()
}

