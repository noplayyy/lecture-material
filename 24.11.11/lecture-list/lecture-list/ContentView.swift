//
//  ContentView.swift
//  lecture-list
//
//  Created by Yeonju on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "person.fill")
                Text("Person")
            }
            .listRowSeparator(.hidden)
            HStack {
                Image(systemName: "car.fill")
                Text("Car")
            }
            .listRowSeparatorTint(Color.red)
            HStack {
                Image(systemName: "phone.fill")
                Text("Phone")
            }
            .listRowBackground(Color.green)
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
