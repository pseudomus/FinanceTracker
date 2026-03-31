//
//  SignInWithEmailViewModel.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 15/12/25.
//

import Foundation

class SignInWithEmailViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    weak var coordinator: (any CoordinatorProtocol)?

    func navigate(to destination: DestinationEnum) {
        coordinator?.navigate(to: destination)
    }

    func signIn() {
        guard !email.isEmpty, !password.isEmpty else { return }
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("success")
                print(returnedUserData)
            } catch {
                print(error.localizedDescription)
            }
        }

    }
}
