
//  LoginViewModel.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//


import Foundation

@MainActor
final class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var loginError: String?
    @Published var loggedInUser: User?
    @Published var didFinishedLogin: Bool = false

    private let loginUseCase: LoginUseCase
    
    
    init(resolver: Resolver = AppResolver.shared) {
        self.loginUseCase = resolver.resolve()
    }
    
    func login() async {
        do {
            let user = try await loginUseCase.execute(username: username, password: password)
            loggedInUser = user
            loginError = nil
            didFinishedLogin = true
        } catch {
            loggedInUser = nil
            loginError = error.localizedDescription
        }
    }
}
