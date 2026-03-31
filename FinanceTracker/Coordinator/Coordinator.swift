//
//  CoordinatorView.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 13/12/25.
//

import SwiftUI

class Coordinator: CoordinatorProtocol {

    @Published public var path: [DestinationEnum] = []
    var factory: ViewFactory = ViewFactory()

    public init() {
        self.factory.coordinator = self
    }

    func goBack() {
        if !path.isEmpty {
            path.removeLast()
        }
    }

    func popToRoot() {
        if !path.isEmpty {
            path.removeAll()
        }
    }

    func navigate(to view: DestinationEnum) {
        path.append(view)
    }

    func buildFirstView() -> AnyView {
        return view(for: .login)
    }

    func view(for state: DestinationEnum) -> AnyView {
        let view: AnyView?

        switch state {
        case .login:
            view = AnyView(factory.createLoginView())
        case .signInWithEmail:
            view = AnyView(factory.createSignInWithEmailView())
        }

        if let screen = view {
            return screen
        }
        fatalError("Failed to create view")
    }
}
