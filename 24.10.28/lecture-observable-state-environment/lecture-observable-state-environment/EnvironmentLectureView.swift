//
//  EnvironmentLectureView.swift
//  lecture-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

//

struct EnvironmentLectureView: View {
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
                ForEach(1...10, id: \.self) {
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
        .padding()
    }
}

#Preview {
    EnvironmentLectureView()
}
