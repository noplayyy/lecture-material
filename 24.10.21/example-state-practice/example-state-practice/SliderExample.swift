//
//  SliderExample.swift
//  example-state-practice
//
//  Created by Yeonju on 10/21/24.
//

import SwiftUI

struct SliderExample: View {
    @State private var rotation: Double = 0
    var body: some View {
        VStack {
            Text("Rotation: \(rotation)") // slider의 state 값 확인을 위한 Text
                .font(.title)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation)) // 시계방향으로 회전
                .animation(.easeInOut(duration: 5), value: rotation) // 매끄러운 회전처럼 보이게 하는 애니메이션 효과, duration -> 효과 시간, value로 정도 값 설정
            Slider(value: $rotation, in: 0 ... 360, step: 0.1) // Slider 값 State, in: value의 범위, step: value의 변경 값 단위
        }
        .padding()
    }
}

#Preview {
    SliderExample()
}
