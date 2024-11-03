//
//  SecondView.swift
//  example-observable-state-environment
//
//  Created by Yeonju on 10/28/24.
//

import SwiftUI

struct SecondView: View {
    @StateObject var data: UserData
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SecondView(data: UserData())
}
