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
    
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
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
                            .padding(.top, isIphone ? 40 : 20)
                            .padding(.trailing, isIphone ? 40 : 50)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .ignoresSafeArea()
                    }
                }
                
                Image(isIphone ? .compyMascote : .compyIpadPequeno)
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
                        .padding(.top, isIphone ? 40 : 20)
                        .padding(.trailing, isIphone ? 40 : 50)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .ignoresSafeArea()
                }
            }
        }
    }
}
