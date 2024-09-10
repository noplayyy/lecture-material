//
//  StackExample.swift
//  2-example-swiftui
//
//  Created by Yeonju on 9/8/24.
//

import SwiftUI

// MARK: - Navigation Destination
enum Stack {
    case vstack
    case hstack
    case zstack
}

struct StackExample: View {
    var type: Stack
    
    init(_ type: Stack) {
        self.type = type
    }
    
    var body: some View {
        Group {
            switch type {
            case .vstack:
                VStackExampleView()
            case .hstack:
                HStackExampleView()
            case .zstack:
                ZStackExampleView()
            }
        }
        .ignoresSafeArea()
    }
}

// MARK: - Text
struct VStackExampleView: View {
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 15
        ) {
            Text("1")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            Text("2")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.cyan)
            Text("3")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.orange)
            Text("4")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
            Text("5")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.pink)
            Text("6")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.teal)
        }
    }
}

// MARK: - Button
struct HStackExampleView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 3) {
            Text("1")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            Text("2")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.cyan)
            Text("3")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.orange)
            Text("4")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
            Text("5")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.pink)
            Text("6")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.teal)
        }
    }
}

// MARK: - Image
struct ZStackExampleView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Text("1")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            Text("2")
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 200)
                .background(Color.cyan)
            Text("3")
                .frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height - 300)
                .background(Color.orange)
            Text("4")
                .frame(width: UIScreen.main.bounds.width - 150, height: UIScreen.main.bounds.height - 400)
                .background(Color.green)
            Text("5")
                .frame(width: UIScreen.main.bounds.width - 200, height: UIScreen.main.bounds.height - 500)
                .background(Color.pink)
                //.zIndex(1) 숫자가 클 수록 더 앞에 위치
            Text("6")
                .frame(width: UIScreen.main.bounds.width - 250, height: UIScreen.main.bounds.height - 600)
                .background(Color.teal)
        }
    }
}

// MARK: - Previews
#Preview("VStack") {
    VStackExampleView()
}

#Preview("HStack") {
    HStackExampleView()
}

#Preview("ZStack") {
    ZStackExampleView()
}

