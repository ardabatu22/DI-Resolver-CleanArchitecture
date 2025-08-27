//
//  Item.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation
 
public struct Item: Identifiable, Equatable {
    public let id: UUID
    public let title: String
    
    public init(id: UUID = UUID(), title: String) {
        self.id = id
        self.title = title
    }
}
