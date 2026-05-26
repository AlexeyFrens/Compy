//
//  ParameterBarView.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//
import SwiftUI

struct ParameterBarView: View {
//    @State var barra = ParameterBarViewModel()
    @Environment(ParameterBarViewModel.self) var barra
    @Environment(ComponentViewModel.self) var component
   
    var body: some View {
        HStack {
            // Botão Esquerda
            HStack{
                Button(action: {
                    withAnimation(.smooth){
                        barra.voltar()
                    }
                }) {
                    Image(systemName: "arrowtriangle.backward.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                
                Text(component.pecas[barra.PecaIndex].pieceName)
                    .frame(width: 150)
                
                // Botão Direita
                
                Button(action: {
                    withAnimation(.smooth){
                        barra.avancar()
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
                if component.pecas[barra.PecaIndex].dropDown.count > 1 {
                    DropDown()
                }
            }
           
            Spacer()
            // Botão Decrementar
            Button(action: {
                withAnimation(.bouncy){
                    
                    barra.decrementar(pecaIndex: barra.PecaIndex, SpecIndex: barra.SpecIndex)
                }
            }) {
                Image(systemName: "minus.square.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            HStack(spacing: 5) {
                Text(String(format: "%.1f", component.pecas[barra.PecaIndex].dropDown[barra.SpecIndex].quantity))
                    .bold()
                Text(component.pecas[barra.PecaIndex].dropDown[barra.SpecIndex].un)
            }
            .frame(width: 100)
    
            Button(action: {
                withAnimation(.bouncy){
                    barra.incrementar(pecaIndex: barra.PecaIndex, SpecIndex: barra.SpecIndex)
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
        let bvm = ParameterBarViewModel(componentViewModel: cvm)
        ParameterBarView()
            .environment(cvm)
            .environment(bvm)
}
