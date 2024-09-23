//
//  ContentView.swift
//  lecture-easily-text-button-swiftui
//
//  Created by Yeonju on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("SwiftUI Example")
                .font(.system(size: 24, weight: .bold))
            Button(action: {
                print("SwiftUI Button Click !")
            }, label: {
                Text("Button")
                    .font(.headline)
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.orange)
            })
        }
    }
}

#Preview {
    ContentView()
}
