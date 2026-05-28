//
//  VisaoGeralButton.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct VisaoGeralButton: View {
    
    var body: some View {
        
        //o botão está chamando a tela 4 do OnBoarding
        NavigationLink {
        //colocar acesso para monitor
        } label: {
            Image("VisaoGeral")
        }
    }
}

#Preview {
    VisaoGeralButton()
}

