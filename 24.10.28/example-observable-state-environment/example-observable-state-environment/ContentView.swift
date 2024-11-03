//
//  ContentView.swift
//  example-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

struct ContentView: View {
    
// 1 - ObservedObject
//    @ObservedObject var data: UserData = UserData()
    
// 2 - StateObject
    @StateObject var data: UserData = UserData()
    
    var body: some View {
        NavigationView {
            
            VStack {
                Text("name: \(data.userName)")
                Text("number: \(data.userNumber)")
                
                // 3 - EnvironmentObject
                NavigationLink(destination: SecondView(data: data)) {
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
