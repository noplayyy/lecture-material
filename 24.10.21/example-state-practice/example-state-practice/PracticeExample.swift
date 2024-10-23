//
//  PracticeExample.swift
//  example-state-practice
//
//  Created by Yeonju on 10/21/24.
//

import SwiftUI

struct PracticeExample: View {
    var colors: [Color] = [.black, .red, .green, .blue, .yellow]
    var colornames = ["Black", "Red", "Green", "Blue", "Yellow"]
    
    @State private var colorIndex: Int = 0
    @State private var rotation: Double = 0
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(text.isEmpty ? "Empty" : text)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(colors[colorIndex])
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5), value: rotation)
            
            Spacer()
            Divider()
            
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
            
            TextField("Enter Text !", text: $text)
                .textFieldStyle(.roundedBorder)
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0 ..< colornames.count, id: \.self) { color in
                    Text(colornames[color])
                        .foregroundStyle(colors[color])
                }
            }
            .pickerStyle(.wheel)
        }
        .padding()
    }
}

#Preview {
    PracticeExample()
}
