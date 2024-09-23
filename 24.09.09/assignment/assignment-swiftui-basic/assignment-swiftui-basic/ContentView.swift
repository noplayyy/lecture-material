//
//  ContentView.swift
//  assignment-swiftui-basic
//
//  Created by Yeonju on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.gray)
            HStack(alignment: .top) {
                Image(.lovelyDog)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 20) {
                    Button {
                        print("print")
                    } label: {
                        Text("Button")
                            .fontWeight(.semibold)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 25)
                            .background(Color.green)
                            .foregroundStyle(Color.white)
                    }
                    Text("Text Area\n!")
                        .fontWeight(.bold)
                        .frame(width: 150, height: 100)
                        .background(Color.pink)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.white)
                }
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(Color.indigo)
            .cornerRadius(25)
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
