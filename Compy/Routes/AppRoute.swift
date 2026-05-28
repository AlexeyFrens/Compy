//
//  AppRoute.swift
//  Compy
//
//  Created by Andre on 27/05/26.
//
import SwiftUI

enum AppRoute: Hashable{
    case screenOnboarding1
    case screenOnboarding2
    case screenOnboarding3
    case screenOnboarding4(isTutorial: Bool)
    case screenOnboarding5(isTutorial: Bool)
    case screenOnboarding6(isTutorial: Bool)
    case screenOnboarding7
    case screenOnboarding8
    case screenOnboarding9
    case mainScreen
}

extension AppRoute: View {
    var body: some View {
        switch self {
        case .screenOnboarding1:
            OnBoardingScreen1()
        case .screenOnboarding2:
            OnBoardingScreen2()
        case .screenOnboarding3:
            OnBoardingScreen3()
        case .screenOnboarding4(let isTutorial):
            OnBoardingScreen4(isTutorial: isTutorial)
        case .screenOnboarding5(let isTutorial):
            OnBoardingScreen5(isTutorial: isTutorial)
        case .screenOnboarding6(let isTutorial):
            OnBoardingScreen6(isTutorial: isTutorial)
        case .screenOnboarding7:
            OnboardingScreen7()
        case .screenOnboarding8:
            OnBoardingScreen8()
        case .screenOnboarding9:
            OnBoardingScreen9()
        case .mainScreen:
            MainScreen()
}

    
    }
}
