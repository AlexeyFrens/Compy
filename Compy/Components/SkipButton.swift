//
//  SkipButton.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct SkipButton: View {
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    @EnvironmentObject private var routerManager : NavigationRouter
    var body: some View {
        Button(action: {
                print("SkipButton pressionado, routes: \(routerManager.routes)")
                routerManager.push(to: .screenOnboarding9)
        }, label: {
            HStack {
                Text("Pular")
                    .font(.custom("IosevkaCharon-Bold", size: isIphone ? 16 : 20))
                    .foregroundStyle(.textos)
                Image(systemName: "chevron.right.2")
                    .foregroundStyle(.textos)
                    .allowsHitTesting(false)
            }
        })
    }
}

#Preview {
    SkipButton()
}
