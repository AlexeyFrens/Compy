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
        @StateObject private var routerManager = NavigationRouter()

        
        
        
        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environment(componentViewModel)
                                   .environment(componentViewModel)
                                   .environmentObject(routerManager)
            }
            
        }
    }
