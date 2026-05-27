//
//  ContentView.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 22/05/26.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var routerManager: NavigationRouter
    
    var isIphone: Bool { UIDevice.current.userInterfaceIdiom == .phone }

    var body: some View {
        NavigationStack(path: $routerManager.routes) {
            ZStack {
                VStack(spacing: 20) {
                    Image(.compyLogo)
                        .imageScale(.large)
                    Button(action: {
                        routerManager.push(to: .screenOnboarding1)
                    }, label: {
                        Text("Iniciar")
                            .font(.custom("IosevkaCharon-Bold", size: 20))
                            .foregroundStyle(.textos)
                    })
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .background(.tint)
                    .cornerRadius(10)
                }
                .padding()

                HStack {
                    Image(.compyMascote)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 255, height: 155)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .padding(.leading, 100)
                .padding(.bottom, isIphone ? 0 : 50)
                .ignoresSafeArea()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.fundoEscuro)
            .navigationDestination(for: AppRoute.self) { route in
                route
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NavigationRouter())
}
