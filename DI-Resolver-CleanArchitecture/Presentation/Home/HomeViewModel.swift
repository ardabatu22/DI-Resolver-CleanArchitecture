//
//  HomeViewModel.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var items: [Item] = []
    @Published var error: String?
    
    private let fetchItemsUseCase: FetchItemsUseCase
    
    init(resolver: Resolver = AppResolver.shared) {
        self.fetchItemsUseCase = resolver.resolve()
    }
    
    func loadItems() async {
        do {
            items = try await fetchItemsUseCase.execute()
        } catch {
            self.error = error.localizedDescription
        }
    }
}
