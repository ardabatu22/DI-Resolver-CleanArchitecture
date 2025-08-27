//
//  AuthRepository.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

public protocol AuthRepository {
    func login(username: String, password: String) async throws -> User
}

public final class AuthRepositoryImpl: AuthRepository {
    private let remote: AuthRemoteDataSource
    
    public init(remote: AuthRemoteDataSource) {
        self.remote = remote
    }
    
    public func login(username: String, password: String) async throws -> User {
        try await remote.login(username: username, password: password)
    }
}
