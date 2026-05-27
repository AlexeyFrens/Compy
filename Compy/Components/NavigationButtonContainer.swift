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
    var totalPages: String?
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    var nextRoute : AppRoute
    var body: some View {
        if hasTwoButtons! {
            HStack {
                NavigationButton(turnTo: "left"){
                    routerNavigation.navigateBack()
                }
                
                Spacer()
                
                Text("\(pageNumber)/\(totalPages ?? "9")")
                    .font(Font.custom("IosevkaCharon-Regular", size: isIphone ? 12 : 32))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                NavigationButton(turnTo: "right"){
                    routerNavigation.push(to: nextRoute)
                }
            }
        }
        else {
            ZStack {
                Text("\(pageNumber)/\(totalPages ?? "9")")
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
