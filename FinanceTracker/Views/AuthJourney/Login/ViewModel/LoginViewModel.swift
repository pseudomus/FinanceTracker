//
//  LoginViewModel.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 15/12/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    weak var coordinator: (any CoordinatorProtocol)?

    func navigate(to destination: DestinationEnum) {
        coordinator?.navigate(to: destination)
    }
}
