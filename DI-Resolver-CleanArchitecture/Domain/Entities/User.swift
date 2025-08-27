//
//  User.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

public struct User: Identifiable, Equatable {
    public let id: UUID
    public let username: String
    public let email: String
    
    public init(id: UUID = UUID(), username: String, email: String) {
        self.id = id
        self.username = username
        self.email = email
    }
}
