//
//  EnvironmentExampleView.swift
//  example-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

struct EnvironmentExampleView: View {
    let user: UserData = UserData()
    
    var body: some View {
        VStack {
            EnterView()
            InfoView()
        }
        .environmentObject(user)
    }
}

struct EnterView: View {
    @EnvironmentObject var user: UserData
    
    var body: some View {
        VStack {
            TextField("Enter Name!", text: $user.userName)
                .textFieldStyle(.roundedBorder)
            Picker(selection: $user.userNumber, label: Text("Number")) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
        }
        .padding()
    }
}

struct InfoView: View {
    @EnvironmentObject var user: UserData
    
    var body: some View {
        VStack {
            Text("user name: \(user.userName)")
            Text("user number: \(user.userNumber)")
        }
    }
}

#Preview {
    EnvironmentExampleView()
}
