//
//  FuncaoPecaButton.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 28/05/26.
//

import SwiftUI

struct FuncaoPecaButton: View {
    
    @Environment(ComponentViewModel.self) var component
    
    // var para o botao "saber" se mostra o modal ou n
    @Binding var mostrarModal: Bool
    
    var body: some View {
        Button {
            print("Botão clicado para exibir o índice: \(component.parameterBar.PecaIndex)")
            mostrarModal = true
        } label: {
            Image("FuncaoGeralPeca")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 8,
                    x: 0,
                    y: 6
                )
        }
    }
}



#Preview {
    //simulando que selecionamos o indice 3
    let modeloFalso = ComponentViewModel()
    let _ = { modeloFalso.parameterBar.PecaIndex = 3 }()
    
    //simula que o botao ja esta conectado com outra view/classe
    FuncaoPecaButton(mostrarModal: .constant(false))
        .environment(modeloFalso)
}



