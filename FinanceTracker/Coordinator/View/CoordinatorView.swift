//
//  CoordinatorView.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 13/12/25.
//

import SwiftUI

public struct CoordinatorView: View {

    @ObservedObject var coordinator: Coordinator

    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.buildFirstView()
                .navigationDestination(for: DestinationEnum.self) { state in
                    coordinator.view(for: state)
                }
        }
    }
}
