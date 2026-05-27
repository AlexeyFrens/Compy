//
//  NavigationButton.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 24/05/26.
//

import SwiftUI

struct NavigationButton: View {
    
    var turnTo: String
    var isIphone = UIDevice.current.userInterfaceIdiom == .phone
    var route : () -> Void
    var body: some View {
        Button(action: route, label: {
            Image(systemName: turnTo == "right" ? "arrow.right" : "arrow.left")
                .foregroundStyle(.textos)
                .font(.system(size: isIphone ? 20 : 40, weight: .black))
        })
        .padding(.horizontal, 24)
        .padding(.vertical, 10)
        .background(.tint)
        .cornerRadius(10)
        .shadow(radius: 4, x: 0, y: 4)
    }
}

#Preview {
    NavigationButton(turnTo: "right",route: {})
}
