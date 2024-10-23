//
//  SliderLecture.swift
//  lecture-state-practice
//
//  Created by Yeonju on 10/21/24.
//

import SwiftUI

struct SliderLecture: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("Rotation: \(rotation)")
                .font(.title)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation)
                )
                .animation(.easeInOut(duration: 5), value: rotation)
            Spacer()
            Divider()
            
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
            
        }
        .padding()
    }
}

#Preview {
    SliderLecture()
}
