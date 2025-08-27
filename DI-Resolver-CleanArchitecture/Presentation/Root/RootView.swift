//
//  RootView.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        switch appState.current {
        case .login:
            LoginView()
        case .home:
            HomeView()
        }
    }
}
