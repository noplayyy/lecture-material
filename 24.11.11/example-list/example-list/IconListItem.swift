//
//  IconListItem.swift
//  example-list
//
//  Created by Yeonju on 11/11/24.
//

import Foundation

// 7. icon 정보를 담는 객체 생성
struct IconListItem: Identifiable {
    var id = UUID()
    var iconName: String
    var iconTitle: String
}
