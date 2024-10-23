//
//  ContentView.swift
//  example-state-practice
//
//  Created by Yeonju on 10/21/24.
//

import SwiftUI

enum ExampleView {
    case slider
    case practice
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Slider", value: ExampleView.slider)
                NavigationLink("Practice", value: ExampleView.practice)
            }
            .navigationDestination(for: ExampleView.self) { type in
                switch type {
                case .slider:
                    SliderExample()
                case .practice:
                    PracticeExample()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
