//
//  ExampleData.swift
//  example-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var userNumber = 0
    @Published var userName = "user"
    
    init() {
        // 데이터 초기화 시 실행 코드
    }
    
    func refreshData() {
        // 데이터 최신화 코드
    }
}
