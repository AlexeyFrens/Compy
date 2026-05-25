//
//  SwiftUIView.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct OnBoardingEnvironment<Content: View>: View {
    
    var hasCompyMascot: Bool? = true
    var hasSkipButton: Bool? = true
    @ViewBuilder let monitorContent: Content
    
    var body: some View {
        if hasCompyMascot! {
            ZStack {
                VStack {
                    Image(.monitorOnBoarding)
                        .overlay(
                            monitorContent
                        )
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .background(.fundoParede)
                .ignoresSafeArea()
                .overlay{
                    if hasSkipButton! {
                        SkipButton()
                            .padding(.top, 40)
                            .padding(.trailing, 40)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .ignoresSafeArea()
                    }
                }
                
                Image(.compyMascote)
                    .padding(.leading, 20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                    .ignoresSafeArea()
            }
        }
        else {
            VStack {
                Image(.monitorOnBoarding)
                    .overlay(
                        monitorContent
                    )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(.fundoParede)
            .ignoresSafeArea()
            .overlay{
                if hasSkipButton! {
                    SkipButton()
                        .padding(.top, 40)
                        .padding(.trailing, 40)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .ignoresSafeArea()
                }
            }
        }
    }
}
