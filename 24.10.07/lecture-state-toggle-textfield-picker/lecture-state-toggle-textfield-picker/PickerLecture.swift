//
//  PickerLecture.swift
//  lecture-state-toggle-textfield-picker
//
//  Created by Yeonju on 10/7/24.
//

import SwiftUI

struct PickerLecture: View {
    @State private var bgColor: Color = .white
    
    var body: some View {
        ZStack {
            BackgroundRectangleView(color: $bgColor)
            Picker("Background Color", selection: $bgColor) {
                Text("white")
                    .tag(Color.white)
                Text("red")
                    .tag(Color.red)
                Text("yellow")
                    .tag(Color.yellow)
                Text("blue")
                    .tag(Color.blue)
                Text("green")
                    .tag(Color.green)
            }
            .pickerStyle(.wheel)
        }
        .ignoresSafeArea()
    }
}

struct BackgroundRectangleView: View {
    @Binding var color: Color
    
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(color)
    }
}

#Preview {
    PickerLecture()
}
