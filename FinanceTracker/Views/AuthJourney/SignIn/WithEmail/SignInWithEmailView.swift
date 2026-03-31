//
//  SignInWithEmailView.swift
//  FinanceTracker
//
//  Created by Luca Lacerda on 15/12/25.
//

import SwiftUI

struct SignInWithEmailView: View {

    @ObservedObject var vm: SignInWithEmailViewModel

    var body: some View {
        VStack {
            TextField("Email", text: $vm.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)

            SecureField("Password", text: $vm.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)

            Button {
                vm.signIn()
            } label: {
                Text("sign in ")

                    .padding()
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle("Sign In With Email")
    }
}

#Preview {
    SignInWithEmailView(vm: .init())
}
