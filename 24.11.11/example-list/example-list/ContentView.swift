//
//  ContentView.swift
//  example-list
//
//  Created by Yeonju on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 1. 리스트는 말 그대로 수직 방향 목록 뷰를 말함
        List {
            // 2. 리스트 빌더 안에 셀 컴포넌트를 각각 View로 구성해주면 됨
            Text("Person")
            Text("Car")
            Text("Phone")
            Text("Message")
            Text("Trash")
            // 3. 셀은 하나의 컴포넌트만 가질 필요는 없음
            // Stack과 같이 하나의 뷰로 묶어주기만 하면 독립적인 셀로 인식
            HStack {
                Image(systemName: "person.fill")
                Text("Person")
            }
            .listRowSeparator(.hidden) // 4. 리스트 구분선 조정
            HStack {
                Image(systemName: "car.fill")
                Text("Car")
            }
            .listRowSeparatorTint(.green) // 5.구분선 색상
            HStack {
                Image(systemName: "phone.fill")
                Text("Phone")
            }
            .listRowBackground(Color.red) // 6.셀 배경 색상
            HStack {
                Image(systemName: "message.fill")
                Text("Message")
            }
            HStack {
                Image(systemName: "trash.fill")
                Text("Trash")
            }
        }
    }
}

#Preview {
    ContentView()
}
