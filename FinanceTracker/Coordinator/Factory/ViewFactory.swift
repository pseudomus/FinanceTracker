//
//  ViewFactory.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 13/12/25.
//

import Foundation

class ViewFactory {
    weak var coordinator: Coordinator?

    func createLoginView() -> LoginView {
        let viewModel = LoginViewModel()
        viewModel.coordinator = self.coordinator
        return LoginView(vm: viewModel)
    }

    func createSignInWithEmailView() -> SignInWithEmailView {
        let viewModel = SignInWithEmailViewModel()
        viewModel.coordinator = self.coordinator
        return SignInWithEmailView(vm: viewModel)
    }
}
