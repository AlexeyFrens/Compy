//
//  SkipButton.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct SkipButton: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Text("Pular")
                    .font(.custom("IosevkaCharon-Bold", size: 16))
                    .foregroundStyle(.textos)
                Image(systemName: "chevron.right.2")
                    .foregroundStyle(.textos)
                    
            }
        })
    }
}

#Preview {
    SkipButton()
}
