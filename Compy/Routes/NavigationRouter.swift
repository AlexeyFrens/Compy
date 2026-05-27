//
//  NavigationRouter.swift
//  Compy
//
//  Created by Andre on 27/05/26.
//
import SwiftUI
import Combine
final class NavigationRouter: ObservableObject {
    @Published var routes = [AppRoute]()

    func push(to tela: AppRoute) {
        routes.append(tela)
    }

    func reset() {
        routes = []
    }

    func navigateBack() {
         routes.popLast()
    }
}
