//
//  ToggleExample.swift
//  example-state-toggle-picker
//
//  Created by Yeonju on 10/6/24.
//

import SwiftUI

struct ToggleExample: View {
    @State private var toggle: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $toggle) {
                Text("Enabled WiFi")
                    .bold()
            }
            HStack {
                Image(systemName: toggle ? "wifi" : "wifi.slash")
                Text("Wifi Status: \(toggle ? "on" : "off")")
                    .font(.title2)
            }
            .foregroundStyle(toggle ? .blue: .gray)
        }
        .padding()
    }
}

#Preview {
    ToggleExample()
}
