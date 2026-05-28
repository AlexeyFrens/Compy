//
//  VisaoGeralButton.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct VisaoGeralButton: View {
    @Environment(ComponentViewModel.self) var component

    var body: some View {
        
        //o botão está chamando a tela 4 do OnBoarding
        Button(action:{
            component.parameterBar.pecaFocada = false
        }){
            Image(.visaoGeral)
        }
    }
}

#Preview {
    VisaoGeralButton()
}

