//
//  VStackLecture.swift
//  lecture-swiftui-basic
//
//  Created by Yeonju on 9/9/24.
//

import SwiftUI

struct VStackLecture: View {
    var body: some View {
        VStack(
            alignment: .center,
            spacing: 5
        ) {
            Text("1")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            Text("2")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.cyan)
            Text("3")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
            Text("4")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
            Text("5")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.pink)
            Text("6")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.teal)
        }
    }
}

#Preview {
    VStackLecture()
}
