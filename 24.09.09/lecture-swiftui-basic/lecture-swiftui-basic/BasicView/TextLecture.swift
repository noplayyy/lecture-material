//
//  TextLecture.swift
//  lecture-swiftui-basic
//
//  Created by Yeonju on 9/9/24.
//

import SwiftUI

struct TextLecture: View {
    var body: some View {
        Text("Text\nExeample")
            .fontWeight(.bold)
            .font(.title)
            .multilineTextAlignment(.center)
            .lineLimit(1)
    }
}

#Preview {
    TextLecture()
}
