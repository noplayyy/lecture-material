//
//  Assignment.swift
//  lecture-state-toggle-textfield-picker
//
//  Created by Yeonju on 10/7/24.
//

import SwiftUI

struct Assignment: View {
    @State private var enteredText: String = ""
    @State private var isBold: Bool = false
    @State private var textColorIndex: Int = 0
    
    var colors: [Color] = [.black, .red, .green, .yellow]
    var colorNames: [String] = ["Black", "Red", "Green", "Yellow"]
    
    var body: some View {
        VStack {
            EnteredTextView(
                enteredText: $enteredText,
                isBold: $isBold,
                textColorIndex: $textColorIndex,
                colors: colors
            )
            
            TextField("Enter Any Text", text: $enteredText)
                .textFieldStyle(.roundedBorder)
            
            Toggle(isOn: $isBold) {
                Text("Bold Text")
                    .bold()
            }
            
            Picker(selection: $textColorIndex, label: Text("Text Color")) {
                ForEach(0 ..< colorNames.count, id: \.self) {
                    Text(colorNames[$0])
                }
            }
            .pickerStyle(.wheel)
        }
        .padding()
    }
}

struct EnteredTextView: View {
    @Binding var enteredText: String
    @Binding var isBold: Bool
    @Binding var textColorIndex: Int
    
    var colors: [Color]
    
    var body: some View {
        Text(enteredText.isEmpty ? "TextField is empty !" : enteredText)
            .font(.system(size: 30))
            .fontWeight(isBold ? .bold : .regular)
            .foregroundStyle(colors[textColorIndex])
    }
}

#Preview {
    Assignment()
}
