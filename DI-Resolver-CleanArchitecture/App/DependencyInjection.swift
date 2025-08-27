//
//  DependencyInjection.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import Foundation

public struct DependencyInjection {
    public static func setup() {
        let resolver = AppResolver.shared
        
        registerAuth(resolver: resolver)
        registerHome(resolver: resolver)
    }
    
    private static func registerAuth(resolver: Resolver) {
        let remote = AuthRemoteDataSourceImpl()
        let authRepo = AuthRepositoryImpl(remote: remote)
        
        resolver.register(LoginUseCase.self,instance: LoginUseCaseImpl(repository: authRepo))
    }
    
    private static func registerHome(resolver: Resolver) {
        let remote = HomeRemoteDataSourceImpl()
        let homeRepo = HomeRepositoryImpl(remote: remote)
        
        resolver.register(FetchItemsUseCase.self,instance: FetchItemsUseCaseImpl(repository: homeRepo))
    }

}
