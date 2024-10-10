//
//  PracticeAssignment.swift
//  example-state-toggle-textfield-picker
//
//  Created by Yeonju on 10/6/24.
//

import SwiftUI

struct PracticeAssignment: View {
    @State private var isBold: Bool = false
    @State private var enteredText: String = ""
    @State private var selectedColorIndex: Int = 0
    
    var colors: [Color] = [.black, .red, .green, .yellow]
    var colorNames:  [String] = ["Black", "Red", "Green", "Yellow"]
    
    var body: some View {
        VStack(spacing: 50) {
            Text(enteredText.isEmpty ? "TextField is empty!" : enteredText)
                .fontWeight(isBold ? .bold : .regular)
                .font(.system(size: 30))
                .foregroundStyle(colors[selectedColorIndex])
            
            VStack(spacing: 20) {
                TextField("Enter Any Text", text: $enteredText)
                    .textFieldStyle(.roundedBorder)
                
                Toggle(isOn: $isBold) {
                    Text("Bold Text")
                        .bold()
                }
                
                Picker(selection: $selectedColorIndex, label: Text("Text Color")) {
                    ForEach(0 ..< colorNames.count, id: \.self) {
                        Text(colorNames[$0])
                    }
                }
                .pickerStyle(.wheel)
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    PracticeAssignment()
}
