//
//  OnBoardingScreen4.swift
//  Compy
//
//  Created by Sarah Freitas on 25/05/26.
//

import SwiftUI

struct OnBoardingScreen4: View {
    
    var pageNumber: String? = "4"
    var totalPages: String?
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    
    var body: some View {
        OnBoardingEnvironment {
            if isIphone {
                VStack{
                    
                    Text ("Esse é o gabinete")
                        .font(Font.custom("IosevkaCharon-Bold", size: 32))
                        .foregroundStyle(.textos)
                        .padding(5)
                    
                    Spacer()
                    
                    Image(.gabineteOnBoarding)
                    
                    Spacer ()
                    
                    Text ("É nele que as peças de hardware estarão para você manipular. Que tal darmos uma olhada mais de perto?")
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(Font.custom("IosevkaCharon-Medium", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.textos)
                        .padding(5)
                    
                    Spacer()
                    
                    NavigationButtonContainer(pageNumber: pageNumber!)
                    
                }
                .padding(50)
            } else {
                VStack{
                    
                    HStack {
                        
                        VStack {
                            Text ("Esse é o gabinete")
                                .font(Font.custom("IosevkaCharon-Bold", size: 64))
                                .foregroundStyle(.textos)
                            
                            Spacer()
                            
                            Text ("É nele que as peças de hardware estarão para você manipular.")
                                .font(Font.custom("IosevkaCharon-Medium", size: 38))
                                .foregroundStyle(.textos)
                                .multilineTextAlignment(.center)
                                .padding(10)
                            
                            Text("Que tal darmos uma olhada mais de perto?")
                                .font(Font.custom("IosevkaCharon-Medium", size: 38))
                                .foregroundStyle(.textos)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                        }
                        
                        Spacer()
                        
                        Image(.desktopOnBoarding)
                    }
                    
                    NavigationButtonContainer(pageNumber: pageNumber!)
                    
                }
                .padding(isIphone ? 50 : 100)
                .padding(.bottom, isIphone ? 0 : 80)
            }
        }
    }
}

#Preview {
    OnBoardingScreen4()
}
