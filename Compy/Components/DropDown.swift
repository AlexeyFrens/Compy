//
//  DropDown.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//
import SwiftUI

struct DropDown: View {
    @Environment(ComponentViewModel.self) var component
//    @State var indexPiece = 0
    @State var isActive = false
//    @State var buttonIsAlive = true
    var body: some View {
        VStack(spacing: 0) {
            Button{
                //                    buttonIsAlive.toggle()
                withAnimation(.bouncy){
                    isActive.toggle()
                }
            }label:{
                Text(component.pecas[component.parameterBar.PecaIndex].dropDown[component.parameterBar.SpecIndex].name)
                Image(systemName: "chevron.up")
            }
            .padding(.horizontal,25)
            .padding(.vertical,2.5)
//            .background(Color.accent)
            .glassEffect()
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .foregroundStyle(.textos)
            .font(Font.custom("IosevkaCharon-Bold", size: 14))
            .overlay{
                if isActive {
                    
                    VStack {
                        let specifications = component.pecas[component.parameterBar.PecaIndex].dropDown
                        ForEach(0..<specifications.count, id: \.self) { i in
                            Button(action: {
                                withAnimation(.bouncy){
                                    component.parameterBar.SpecIndex = i
                                    isActive = false
                                    //                            buttonIsAlive.toggle()
                                }
                            }) {
                                Text(specifications[i].name)
                                    .font(.custom("IosevkaCharon-Bold", size: 14))
                                    .foregroundStyle(.textos)
                            }
                            if i == 0{
                                Divider()
                                    .frame(maxWidth: .infinity)
                                    .padding(.horizontal)
                                    .background(Color.white)
                            }
                        }
                    }
                    .padding(.horizontal,10)
                    .padding(.vertical)
                    .glassEffect()
                    .zIndex(999)
                    .onChange(of: component.parameterBar.PecaIndex) {
                        isActive = false
                    }
                }
            }
        }
            
           
            
        }
        
    }

