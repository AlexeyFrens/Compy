//
//  ParameterBarView.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//
import SwiftUI

struct ParameterBarView: View {
    @Environment(ComponentViewModel.self) var component
    
    var body: some View {
        HStack {
            // Botão Esquerda
            HStack{
                Button(action: {
                    withAnimation(.smooth){
                        component.parameterBar.voltar(totalPecas: component.pecas.count)
                    }
                }) {
                    Image(systemName: "arrowtriangle.backward.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Text(component.pecas[component.parameterBar.PecaIndex].pieceName)
                    .font(.custom("IosevkaCharon-Bold", size: 20))
                    .frame(width: 150)
                
                // Botão Direita
                
                Button(action: {
                    withAnimation(.smooth){
                        component.parameterBar.avancar(totalPecas: component.pecas.count)
                    }
                }) {
                    Image(systemName: "arrowtriangle.forward.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
            }
            Spacer()
            ZStack{
                // Renderiza o dropdown apenas se houver mais de uma opção
                if component.pecas[component.parameterBar.PecaIndex].dropDown.count > 1 {
                    DropDown()
                }
            }
            
            Spacer()
            // Botão Decrementar
            Button(action: {
                withAnimation(.bouncy){
                    
                    component.parameterBar.decrementar(componentViewModel: component)
                }
            }) {
                Image(systemName: "minus.square.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            HStack(spacing: 5) {
                Text(String(format: "%.1f", component.pecas[component.parameterBar.PecaIndex].dropDown[component.parameterBar.SpecIndex].quantity))
                    .font(.custom("IosevkaCharon-Bold", size: 20))
                Text(component.pecas[component.parameterBar.PecaIndex].dropDown[component.parameterBar.SpecIndex].un)
                    .font(.custom("IosevkaCharon-Bold", size: 20))
            }
            .frame(width: 100)
            
            Button(action: {
                withAnimation(.bouncy){
                    component.parameterBar.incrementar(componentViewModel: component)
                }
            }) {
                Image(systemName: "plus.square.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        
        //        .glassEffect(.regular.tint(.indigo))
        .glassEffect()
        //        .environment(barra)
    }
}

#Preview {
    let cvm = ComponentViewModel()
    ParameterBarView()
        .environment(cvm)
}
