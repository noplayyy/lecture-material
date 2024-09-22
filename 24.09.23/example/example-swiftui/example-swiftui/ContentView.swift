//
//  ContentView.swift
//  example-swiftui
//
//  Created by Yeonju on 9/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("SwiftUI Example")
                .font(.system(size: 24, weight: .bold))
            Button {
                print("SwiftUI Button Click !")
            } label: {
                Text("Button")
                    .font(.headline)
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.orange)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
