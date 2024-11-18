//
//  IconList.swift
//  lecture-list
//
//  Created by Yeonju on 11/11/24.
//

import SwiftUI

struct IconList: View {
    
    @State var isChecked: Bool = false
    
    // icon list
    @State var iconList: [IconListItem] = [
        IconListItem(iconName: "person.fill", iconTitle: "Person"),
        IconListItem(iconName: "car.fill", iconTitle: "Car"),
        IconListItem(iconName: "phone.fill", iconTitle: "Phone"),
        IconListItem(iconName: "message.fill", iconTitle: "Message"),
        IconListItem(iconName: "trash.fill", iconTitle: "Trash")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("settings")) {
                    Toggle(isOn: $isChecked) { // 동적 데이터 요소
                        Text("Checked")
                    }
                }
                
                Section(header: Text("icons")) {
                    ForEach(iconList) { item in // 정적 데이터 요소
                        NavigationLink(value: item.iconTitle) {
                            HStack {
                                Image(systemName: item.iconName)
                                Text(item.iconTitle)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: String.self) { item in
                Text("iconTitle: \(item)")
            }
        }
    }
}

#Preview {
    IconList()
}
