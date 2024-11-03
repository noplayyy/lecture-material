//
//  ContentView.swift
//  lecture-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

struct ContentView: View {
    // ObservedObject
    @StateObject var user: UserData = UserData()
    
    // StateObject
    
    var body: some View {
        NavigationView {
            VStack {
                Text("name: \(user.userName)")
                Text("number:  \(user.userNumber)")
                
                NavigationLink(destination: SecondView(data: user)) {
                    Text("Next Screen")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
