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
    case screenOnboarding4
    case screenOnboarding5
    case screenOnboarding6
    case screenOnboarding7
    case screenOnboarding8
    case screenOnboarding9
    case mainScreen
}

extension AppRoute: View {
    
    var body: some View {
        switch self {
        case .screenOnboarding1:
            OnBoardingScreen1(pageNumber: "1",totalPages: "9")
        case .screenOnboarding2:
            OnBoardingScreen2()
        case .screenOnboarding3:
            OnBoardingScreen3()
        case .screenOnboarding4:
            OnBoardingScreen4()
        case .screenOnboarding5:
            OnBoardingScreen5()
        case .screenOnboarding6:
            OnBoardingScreen6()
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
