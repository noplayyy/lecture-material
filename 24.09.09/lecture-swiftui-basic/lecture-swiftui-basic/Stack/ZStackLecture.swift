//
//  ZStackLecture.swift
//  lecture-swiftui-basic
//
//  Created by Yeonju on 9/9/24.
//

import SwiftUI

struct ZStackLecture: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Text("1")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            Text("2")
                .frame(maxWidth: UIScreen.main.bounds.width - 50, maxHeight: UIScreen.main.bounds.height - 100)
                .background(Color.cyan)
            Text("3")
                .frame(maxWidth: UIScreen.main.bounds.width - 100, maxHeight: UIScreen.main.bounds.height - 200)
                .background(Color.green)
            Text("4")
                .frame(maxWidth: UIScreen.main.bounds.width - 150, maxHeight: UIScreen.main.bounds.height - 300)
                .background(Color.yellow)
            Text("5")
                .frame(maxWidth: UIScreen.main.bounds.width - 200, maxHeight: UIScreen.main.bounds.height - 400)
                .background(Color.pink)
            Text("6")
                .frame(maxWidth: UIScreen.main.bounds.width - 250, maxHeight: UIScreen.main.bounds.height - 500)
                .background(Color.teal)
        }
    }
}

#Preview {
    ZStackLecture()
}
