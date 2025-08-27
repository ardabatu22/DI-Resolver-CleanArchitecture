//
//  DI_Resolver_CleanArchitectureApp.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

@main
struct DI_Resolver_CleanArchitectureApp: App {
    @StateObject private var appState = AppState()

    init(){
        DependencyInjection.setup()
    }
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(appState)
        }
    }
}
