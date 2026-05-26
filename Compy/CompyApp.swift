//
//  CompyApp.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 22/05/26.
//

import SwiftUI

@main
struct CompyApp: App {
    
    @State private var componentViewModel = ComponentViewModel()
    @State private var parameterBarViewModel: ParameterBarViewModel
    
    init() {
        let cvm = ComponentViewModel()
        _componentViewModel = State(initialValue: cvm)
        _parameterBarViewModel = State(initialValue: ParameterBarViewModel(componentViewModel: cvm))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environment(componentViewModel)
        .environment(parameterBarViewModel)
    }
}
