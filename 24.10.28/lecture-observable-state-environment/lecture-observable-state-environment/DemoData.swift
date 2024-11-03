//
//  DemoData.swift
//  lecture-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import Foundation

class UserData: ObservableObject {
    @Published var userName: String = "user"
    @Published var userNumber: Int = 0
    
    init() {
        
    }
}
