//
//  LoginUseCase.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation


public protocol LoginUseCase {
    func execute(username: String, password: String) async throws -> User
}

public final class LoginUseCaseImpl: LoginUseCase {
    private let repository: AuthRepository
    
    public init(repository: AuthRepository) {
        self.repository = repository
    }
    
    public func execute(username: String, password: String) async throws -> User {
        try await repository.login(username: username, password: password)
    }
}
