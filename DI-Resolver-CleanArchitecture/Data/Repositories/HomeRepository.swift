//
//  HomeRepository.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation


public protocol HomeRepository {
    func fetchItems() async throws -> [Item]
}

public final class HomeRepositoryImpl: HomeRepository {
    private let remote: HomeRemoteDataSource
    
    public init(remote: HomeRemoteDataSource) {
        self.remote = remote
    }
    
    public func fetchItems() async throws -> [Item] {
        try await remote.fetchItems()
    }
}
