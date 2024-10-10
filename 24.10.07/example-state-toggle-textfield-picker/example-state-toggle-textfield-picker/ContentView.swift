//
//  ContentView.swift
//  example-state-toggle-textfield-picker
//
//  Created by Yeonju on 10/6/24.
//

import SwiftUI

enum StateView {
    case toggle
    case textfield
    case picker
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Toggle", value: StateView.toggle)
                NavigationLink("TextField", value: StateView.textfield)
                NavigationLink("Picker", value: StateView.picker)
            }
            .navigationDestination(for: StateView.self) { type in
                switch type {
                case .toggle:
                    ToggleExample()
                case .textfield:
                    TextFieldExample()
                case .picker:
                    PickerExample()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
