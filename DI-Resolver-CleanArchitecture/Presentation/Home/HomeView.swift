//
//  HomeView.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.items) { item in
                    Text(item.title)
                }
            }
            .navigationTitle("Home")
            .task {
                await vm.loadItems()
            }
            .overlay {
                if let error = vm.error {
                    Text("Error: \(error)")
                        .foregroundColor(.red)
                }
            }
        }
    }
}


#Preview {
    HomeView()
}
