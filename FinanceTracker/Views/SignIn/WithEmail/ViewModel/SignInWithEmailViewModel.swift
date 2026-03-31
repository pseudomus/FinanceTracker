//
//  SignInWithEmailViewModel.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 15/12/25.
//

import Foundation

@MainActor
class SignInWithEmailViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    weak var coordinator: (any CoordinatorProtocol)?

    func navigate(to destination: DestinationEnum) {
        coordinator?.navigate(to: destination)
    }
}
