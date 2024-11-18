//
//  IconList.swift
//  example-list
//
//  Created by Yeonju on 11/11/24.
//

import SwiftUI

struct IconList: View {
    // 10. 동적 요소인 토글을 리스트에 추가해보기위해 상태 선언
    @State var isChecked: Bool = false
    
    // 8. 데이터 리스트를 선언해주고
    @State var iconList: [IconListItem] = [
        IconListItem(iconName: "person.fill", iconTitle: "Person"),
        IconListItem(iconName: "car.fill", iconTitle: "Car"),
        IconListItem(iconName: "phone.fill", iconTitle: "Phone"),
        IconListItem(iconName: "message.fill", iconTitle: "Message"),
        IconListItem(iconName: "trash.fill", iconTitle: "Trash")
    ]
    
    var body: some View {
        // 9. 각 셀에 대한 뷰 대신 데이터 배열에 대한 반복문을 List 자체에서 실행(제공)
        // 그 item을 담을 View만 구성해주면 연결되는 걸 확인 가능함
        // 이는 정적 데이터만을 표시하는 것
        List(iconList) { item in
            HStack {
                Image(systemName: item.iconName)
                Text(item.iconTitle)
            }
        }
        
        // 11. 동적 요소를 추가하므로 List 자체의 반복 구문을 사용하지 못함 -> ForEach로 item 리스트 반복
        // 동적 요소 즉 토글 셀을 별도 추가
        List {
            Section(header: Text("settings")) {
                Toggle(isOn: $isChecked) {
                    Text("Checked")
                }
            }
            // 12. 각 리스트의 영역을 나눌 수 있음
            Section(header: Text("icons")) {
                ForEach(iconList) { item in
                    HStack {
                        Image(systemName: item.iconName)
                        Text(item.iconTitle)
                    }
                }
            }
        }
        
        // 13. 각 Cell 요소 별 화면 이동을 위한 Navigation 처리를 해줄 수 있음
        // NavigationStack을 이용해 Navigation 처리를 할 것이라는 것을 선언
        NavigationStack {
            List {
                Section(header: Text("settings")) {
                    Toggle(isOn: $isChecked) {
                        Text("Checked")
                    }
                }
                
                Section(header: Text("icons")) {
                    ForEach(iconList) { item in
                        // 14. NavigationLink를 연결
                        // 이 때 value는 화면을 넘길 때 식별할, 넘길 값임
                        NavigationLink(value: item.iconTitle) {
                            HStack {
                                Image(systemName: item.iconName)
                                Text(item.iconTitle)
                            }
                        }
                    }
                }
            }
            // 15. 네비게이션 처리를 해준 부분의 목적지를 navigationDestination을 이용해 연결
            .navigationDestination(for: String.self) { item in
                Text("iconTitle: \(item)")
            }
        }
    }
}

#Preview {
    IconList()
}
