//
//  BasicExample.swift
//  example-swiftui-basic
//
//  Created by Yeonju on 9/8/24.
//

import SwiftUI

// MARK: - Navigation Destination
enum Basic {
    case text
    case button
    case image
}

struct BasicExample: View {
    var type: Basic
    
    init(_ type: Basic) {
        self.type = type
    }
    
    var body: some View {
        Group {
            switch type {
            case .text:
                TextExampleView()
            case .button:
                ButtonExampleView()
            case .image:
                ImageExampleView()
            }
        }
        .ignoresSafeArea()
    }
}

// MARK: - Text
struct TextExampleView: View {
    var body: some View {
        Text("Text\nExample\n!-!")
            .font(.largeTitle)
            .padding(20)
            .frame(alignment: .center)
            .multilineTextAlignment(.center)
    }
}

// MARK: - Button
struct ButtonExampleView: View {
    var body: some View {
        Button {
            print("Button click !!!")
        } label: {
            Text("Button Example")
                .fontWeight(.heavy)
                .font(.title3)
                .foregroundStyle(Color.white)
                .frame(width: 300, height: 300)
                .background(Color.brown)
                .cornerRadius(50)
        }
    }
}

// MARK: - Image
struct ImageExampleView: View {
    var body: some View {
        Image(.lovelyDog)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

// MARK: - Previews
#Preview("Text") {
    TextExampleView()
}

#Preview("Button") {
    ButtonExampleView()
}

#Preview("Image") {
    ImageExampleView()
}
