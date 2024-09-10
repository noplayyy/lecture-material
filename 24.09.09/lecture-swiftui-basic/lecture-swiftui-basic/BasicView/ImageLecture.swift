//
//  ImageLecture.swift
//  lecture-swiftui-basic
//
//  Created by Yeonju on 9/9/24.
//

import SwiftUI

struct ImageLecture: View {
    var body: some View {
        Image(.lovelyDog)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

#Preview {
    ImageLecture()
}
