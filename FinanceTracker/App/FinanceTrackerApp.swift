//
//  FinanceTrackerApp.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 13/12/25.
//

import SwiftUI

@main
struct FinanceTrackerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            CoordinatorView(coordinator: Coordinator())
        }
    }
}
