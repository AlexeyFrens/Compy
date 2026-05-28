//
//  NavigationButtonContainer.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct NavigationButtonContainer: View {
    @EnvironmentObject var routerNavigation : NavigationRouter
    var hasTwoButtons: Bool? = true
    var pageNumber: String
    var totalPages: String
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    var nextRoute : AppRoute
    var isTutorial: Bool = false
    var body: some View {
        if hasTwoButtons! || (isTutorial && Int(pageNumber)! - 3 != 1) {
            HStack {
                NavigationButton(turnTo: "left"){
                    routerNavigation.navigateBack()
                }
                
                Spacer()
                
                Text("\(isTutorial ? "\(Int(pageNumber)! - 3)" : "\(pageNumber)")/\(isTutorial ? "3" : "\(totalPages)")")
                    .font(Font.custom("IosevkaCharon-Regular", size: isIphone ? 12 : 32))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                if isTutorial && Int(pageNumber)! - 3 == 3 {
                    NavigationButton(turnTo: "right"){
                        routerNavigation.push(to: .mainScreen)
                    }
                } else {
                    NavigationButton(turnTo: "right"){
                        routerNavigation.push(to: nextRoute)
                    }
                }
            }
        }
        else {
            ZStack {
                Text("\(isTutorial ? "\(Int(pageNumber)! - 3)" : "\(pageNumber)")/\(isTutorial ? "3" : "\(totalPages)")")
                    .font(Font.custom("IosevkaCharon-Regular", size: isIphone ? 12 : 32))
                    .foregroundStyle(.textos)
                
                NavigationButton(turnTo: "right"){
                    routerNavigation.push(to: nextRoute)
                }
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}
