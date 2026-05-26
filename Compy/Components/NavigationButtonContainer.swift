//
//  NavigationButtonContainer.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 25/05/26.
//

import SwiftUI

struct NavigationButtonContainer: View {
    
    var hasTwoButtons: Bool? = true
    var pageNumber: String
    var totalPages: String?
    
    var body: some View {
        if hasTwoButtons! {
            HStack {
                NavigationButton(turnTo: "left")
                
                Spacer()
                
                Text("\(pageNumber)/\(totalPages ?? "9")")
                    .font(Font.custom("IosevkaCharon-Regular", size: 12))
                    .foregroundStyle(.textos)
                
                Spacer()
                
                NavigationButton(turnTo: "right")
            }
        }
        else {
            ZStack {
                Text("\(pageNumber)/\(totalPages ?? "9")")
                    .font(.system(size: 12))
                    .foregroundStyle(.textos)
                
                NavigationButton(turnTo: "right")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}
