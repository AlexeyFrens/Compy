//
//  ContentView.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 22/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(.compyLogo)
                    .imageScale(.large)
                Button(action: {}, label: {
                    Text("Iniciar")
                        .font(.custom("IosevkaCharon-Bold", size: 20))
                        .foregroundStyle(.textos)
                })
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(.tint)
                .cornerRadius(10)
            }
            .padding()
            
            HStack {
                Image(.compyMascote)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 255, height: 155)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .padding(.leading, 100)
            .ignoresSafeArea()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.fundoEscuro)
    }
}

#Preview {
    ContentView()
}
