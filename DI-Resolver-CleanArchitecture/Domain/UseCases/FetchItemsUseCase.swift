//
//  FetchItemsUseCase.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation


public protocol FetchItemsUseCase {
    func execute() async throws -> [Item]
}

public final class FetchItemsUseCaseImpl: FetchItemsUseCase {
    private let repository: HomeRepository
    
    public init(repository: HomeRepository) {
        self.repository = repository
    }
    
    public func execute() async throws -> [Item] {
        try await repository.fetchItems()
    }
}
