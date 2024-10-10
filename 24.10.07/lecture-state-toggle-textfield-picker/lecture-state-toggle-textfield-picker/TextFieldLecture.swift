//
//  TextFieldLecture.swift
//  lecture-state-toggle-textfield-picker
//
//  Created by Yeonju on 10/7/24.
//

import SwiftUI

struct TextFieldLecture: View {
    @State private var enteredText: String = ""
    
    var body: some View {
        VStack {
            Text("Entered Text: \(enteredText)")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter Any Text", text: $enteredText)
                .font(.headline)
                .foregroundStyle(Color.black)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

#Preview {
    TextFieldLecture()
}
