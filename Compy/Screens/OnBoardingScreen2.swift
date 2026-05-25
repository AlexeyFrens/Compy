//
//  OnBoardingScreen2.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct OnBoardingScreen2: View {
    var body: some View {
        ZStack {
            VStack {
                Image(.monitorOnBoarding)
                    .overlay(
                        VStack {
                            Text("Vou te ajudar a entender como os principais componentes físicos de um computador funcionam.")
                                .font(.system(size: 28))
                                .foregroundStyle(.textos)
                                .multilineTextAlignment(.center)
                                .padding(5)
                            
                            Text("Mas antes de começar, vou mostrar como interagir com as nossas peças!")
                                .font(.system(size: 28))
                                .foregroundStyle(.textos)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                            
                            HStack {
                                NavigationButton(turnTo: "left")
                                
                                Spacer()
                                
                                Text("1/9")
                                    .font(.system(size: 12))
                                    .foregroundStyle(.textos)
                                
                                Spacer()
                                
                                NavigationButton(turnTo: "right")
                            }
                        }
                            .padding(50)
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(.fundoParede)
            .ignoresSafeArea()
            .overlay(
                SkipButton()
                    .padding(.top, 40)
                    .padding(.trailing, 40)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                    .ignoresSafeArea()
            )
            
            Image(.compyMascote)
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    OnBoardingScreen2()
}
