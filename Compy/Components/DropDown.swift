//
//  DropDown.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//
import SwiftUI

struct DropDown: View {
    @ObservedObject var barra : ParameterBarViewModel
    @State var indexPiece = 0
    @State var isActive = false
    @State var buttonIsAlive = true
    @Binding var index : Int
    var body: some View {
        VStack(spacing: 0) {
            if buttonIsAlive{
                Button(action: {
//                    buttonIsAlive.toggle()
                    isActive.toggle()
                }) {
                    Text(barra.pecas[index].dropDown[indexPiece].name)
                    Image(systemName: isActive == false ? "chevron.up" : "chevron.down")
                }
               
                .padding(.horizontal,25)
                .padding(.vertical,2.5)
                .background(Color.accent)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .foregroundStyle(Color.fundoMonitor)
                .font(Font.custom("IosevkaCharon-Bold", size: 14))
            }
            
            if isActive {
                
                VStack {
                    let specifications = barra.pecas[index].dropDown
                    ForEach(0..<specifications.count, id: \.self) { i in
                        Button(action: {
                            indexPiece = i
                            barra.index = i
                            isActive = false
//                            buttonIsAlive.toggle()
                        }) {
                            Text(specifications[i].name)
                              
                        }
                    }
                }
            }
        }
        .onChange(of: index) {
            indexPiece = 0
            isActive = false
        }
    }
}
