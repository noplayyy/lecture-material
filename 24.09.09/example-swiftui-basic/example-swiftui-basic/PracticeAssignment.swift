//
//  PracticeAssignment.swift
//  example-swiftui-basic
//
//  Created by Yeonju on 9/22/24.
//

import SwiftUI

struct PracticeAssignment: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(Color.gray)
            HStack(
                alignment: .top,
                spacing: 30
            ) {
                Image(.lovelyDog)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(.circle)
                VStack(
                    alignment: .leading,
                    spacing: 20
                ) {
                    Button {
                        print("Button ~")
                    } label: {
                        Text("Button")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 15)
                            .background(Color.green)
                            .cornerRadius(12)
                    }
                    Text("Text Area\n! ! ! ! !")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: 150, height: 100)
                        .background(Color.pink)
                }
                .foregroundStyle(Color.white)
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .background(Color.indigo)
            .cornerRadius(25)
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PracticeAssignment()
}
