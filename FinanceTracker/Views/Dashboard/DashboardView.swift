//
//  DashboardView.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 30/03/26.
//

import SwiftUI

struct DashboardView: View {

    @ObservedObject var vm: DashboardViewModel

    var body: some View {
        VStack {
            Text("NavigationView")
        }
    }
}

#Preview {
    DashboardView(vm: .init())
}
