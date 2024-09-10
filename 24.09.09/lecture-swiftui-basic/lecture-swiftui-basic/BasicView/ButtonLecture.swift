//
//  ButtonLecture.swift
//  lecture-swiftui-basic
//
//  Created by Yeonju on 9/9/24.
//

import SwiftUI

struct ButtonLecture: View {
    var body: some View {
        Button {
            // action
            print("click ~")
        } label: {
            // view
            Text("Button Example")
                .fontWeight(.bold)
                .font(.title2)
                .foregroundStyle(Color.white)
//                .frame(maxWidth: .infinity)
                .padding(.horizontal, 50)
                .frame(height: 300)
                .background(Color.brown)
                .cornerRadius(30)
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    ButtonLecture()
}
