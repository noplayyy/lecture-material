//
//  ContentView.swift
//  example-swiftui-basic
//
//  Created by Yeonju on 9/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(
                    header: {
                        Text("Basic")
                            .font(.title3)
                            .fontWeight(.bold)
                    }()
                ) {
                    NavigationLink("Text", value: Basic.text)
                    NavigationLink("Button", value: Basic.button)
                    NavigationLink("Image", value: Basic.image)
                }
                Section(
                    header: {
                        Text("Stack")
                            .font(.title3)
                            .fontWeight(.bold)
                    }()
                ) {
                    NavigationLink("VStack", value: Stack.vstack)
                    NavigationLink("HStack", value: Stack.hstack)
                    NavigationLink("ZStack", value: Stack.zstack)
                }
            }
            .navigationDestination(for: Basic.self) { type in
                BasicExample(type)
            }
            .navigationDestination(for: Stack.self) { type in
                StackExample(type)
            }
        }
    }
}

#Preview {
    ContentView()
}
