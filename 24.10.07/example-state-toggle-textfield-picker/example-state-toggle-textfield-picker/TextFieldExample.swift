//
//  TextFieldExample.swift
//  example-state-toggle-picker
//
//  Created by Yeonju on 10/6/24.
//

import SwiftUI

struct TextFieldExample: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            Text("Entered Text: \(text)")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter Any Text", text: $text)
                .font(.headline)
                .foregroundStyle(Color.black)
        }
        .padding()
    }
}

#Preview {
    TextFieldExample()
}
