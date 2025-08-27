//
//  Resolver.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

protocol Resolver {
    func resolve<T>() -> T
    func register<T>(_ type: T.Type, instance: T)
}

final class AppResolver: Resolver {
    static let shared = AppResolver()
    private var registry: [String: Any] = [:]
    
    private init() {}
    
    func register<T>(_ type: T.Type, instance: T) {
        registry["\(type)"] = instance
    }
    
    func resolve<T>() -> T {
        guard let service = registry["\(T.self)"] as? T else {
            fatalError("No registered service for \(T.self)")
        }
        return service
    }
    
    // for Debug 
    func debugServices() {
        print("Registered services: \(registry.keys)")
    }
}
