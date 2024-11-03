//
//  StudentData.swift
//  lecture-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

enum Department: String {
    case software, iot, ai
}

class StudentData: ObservableObject {
    @Published var grade: Int = 1
    @Published var `class`: Int = 1
    @Published var number: Int = 1
    @Published var department: Department = .software
    @Published var name: String = ""
    @Published var checked: Bool = false
}
