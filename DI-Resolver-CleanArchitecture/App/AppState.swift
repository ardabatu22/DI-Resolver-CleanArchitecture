//
//  AppState.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

enum AppScreen {
    case login
    case home
}

final class AppState: ObservableObject {
    @Published var current: AppScreen = .login
}
