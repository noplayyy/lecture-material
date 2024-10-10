//
//  ToggleLecture.swift
//  lecture-state-toggle-textfield-picker
//
//  Created by Yeonju on 10/7/24.
//

import SwiftUI

struct ToggleLecture: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Enabled Wifi")
            }
            WifiStatusView(isOn: $isOn)
        }
        .padding()
    }
}

struct WifiStatusView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        HStack {
            Image(systemName: isOn ? "wifi" : "wifi.slash")
            Text("Wifi Status: \(isOn ? "on" : "off")")
                .font(.title2)
        }
        .foregroundStyle(isOn ? .blue : .gray)
    }
}

#Preview {
    ToggleLecture()
}
