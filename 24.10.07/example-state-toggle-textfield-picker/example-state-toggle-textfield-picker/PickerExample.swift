///
//  PickerExample.swift
//  example-state-toggle-picker
//
//  Created by Yeonju on 10/6/24.
//

import SwiftUI

struct PickerExample: View {
    @State private var pickerSelection: Color = .white
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(pickerSelection)
            Picker("Background Color", selection: $pickerSelection) {
                Group {
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
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.black)
            }
            .pickerStyle(.wheel)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PickerExample()
}
