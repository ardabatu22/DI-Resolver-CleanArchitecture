//
//  HomeRemoteDataSource.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

public protocol HomeRemoteDataSource {
    func fetchItems() async throws -> [Item]
}

public final class HomeRemoteDataSourceImpl: HomeRemoteDataSource {
    public init() {}
    
    public func fetchItems() async throws -> [Item] {
        // Mock Data
        return [
            Item(title: "Item 1"),
            Item(title: "Item 2"),
            Item(title: "Item 3")
        ]
    }
}
