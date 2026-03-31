//
//  CoordinatorProtocol.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 13/12/25.
//

import SwiftUI

protocol CoordinatorProtocol: ObservableObject {
    func goBack()
    func popToRoot()
    func navigate(to view: DestinationEnum)
}
