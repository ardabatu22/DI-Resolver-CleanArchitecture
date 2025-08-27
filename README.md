# DI-Resolver-CleanArchitecture
# DI (Resolver) - Clean Architecture in SwiftUI

This project demonstrates how to structure a SwiftUI app using  
Dependency Injection (Resolver pattern) and Clean Architecture principles.

## Architecture
- **Domain** → Entities, UseCases
- **Data** → Repository + DataSource
- **Presentation** → ViewModel + View
- **App** → Resolver + DependencyInjection + AppState

## Features
- Login module (fake login with username & password)
- Home module (fetching sample items)
- Dependency Injection via Resolver
- Clean separation of layers (Domain, Data, Presentation)

##  Usage
```swift
@main
struct SwiftUI_DI_Resolver_CleanArchitectureApp: App {
    @StateObject private var appState = AppState()
    
    init() {
        DependencyInjection.setup()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(appState)
        }
    }
}
