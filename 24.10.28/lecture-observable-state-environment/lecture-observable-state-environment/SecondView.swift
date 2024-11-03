//
//  SecondView.swift
//  lecture-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

struct SecondView: View {
    @StateObject var data: UserData
    
    var body: some View {
        VStack {
            Text("name: \(data.userName)")
            Text("number: \(data.userNumber)")
        }
    }
}

#Preview {
//    SecondView(data:)
}
