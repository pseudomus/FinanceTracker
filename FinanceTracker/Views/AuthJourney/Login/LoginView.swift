//
//  ContentView.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 13/12/25.
//

import SwiftUI

struct LoginView: View {

    var vm: LoginViewModel

    var body: some View {
        VStack {
            Button {
                vm.navigate(to: .signInWithEmail)
            } label: {
                Text("Sign In With Email")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding(15)
                    .background(.blue)
                    .cornerRadius(50)
            }

        }
        .navigationTitle("SignIn")
    }
}

#Preview {
    LoginView(vm: .init())
}
