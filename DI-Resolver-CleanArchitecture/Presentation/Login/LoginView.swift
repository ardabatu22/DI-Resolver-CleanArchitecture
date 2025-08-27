//
//  LoginView.swift
//  DI-Resolver-CleanArchitecture
//
//  Created by Batuhan Arda on 27.08.2025.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appState: AppState
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
            
            TextField("Username", text: $vm.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            SecureField("Password", text: $vm.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button("Login") {
                Task { await vm.login() }
            }
            .buttonStyle(.borderedProminent)
            
            if let user = vm.loggedInUser {
                Text("Welcome, \(user.username)")
                    .foregroundColor(.green)
            }
            
            if let error = vm.loginError {
                Text("Error: \(error)")
                    .foregroundColor(.red)
            }
        }
        .padding()
        .onReceive(vm.$didFinishedLogin){ isLogin in
            if isLogin {
                appState.current = .home
            }
        }
    }
}

#Preview {
    LoginView()
}
