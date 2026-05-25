//
//  NavigationButtonContainer.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct NavigationButtonContainer: View {
    
    var hasTwoButtons: Bool? = true
    
    var body: some View {
        if hasTwoButtons! {
            HStack {
                NavigationButton(turnTo: "left")
                
                Spacer()
                
                Text("1/9")
                    .font(.system(size: 12))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                NavigationButton(turnTo: "right")
            }
        }
        else {
            ZStack {
                Text("1/9")
                    .font(.system(size: 12))
                    .foregroundStyle(.textos)
                
                NavigationButton(turnTo: "right")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}
