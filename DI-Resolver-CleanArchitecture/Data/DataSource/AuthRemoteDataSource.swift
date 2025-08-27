//
//  AuthRemoteDataSource.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

public protocol AuthRemoteDataSource {
    func login(username: String, password: String) async throws -> User
}

public final class AuthRemoteDataSourceImpl: AuthRemoteDataSource {
    public init() {}
    
    public func login(username: String, password: String) async throws -> User {
        // Mock Data
        if username == "batuhan" && password == "1234" {
            return User(username: "Batuhan", email: "batuhan@example.com")
        } else {
            throw NSError(
                domain: "LoginError",
                code: 401,
                userInfo: [NSLocalizedDescriptionKey: "Invalid credentials"]
            )
        }
    }
}
