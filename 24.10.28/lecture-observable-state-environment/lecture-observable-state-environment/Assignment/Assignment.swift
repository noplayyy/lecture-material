//
//  Assignment.swift
//  lecture-observable-state-environment
//
//  Created by Yeonju on 11/4/24.
//

import SwiftUI

struct Assignment: View {
    var student = StudentData()
    var body: some View {
        NavigationView {
            VStack {
                EnterStudentView()
                NavigationLink(destination: StudentInfoView()) {
                    Text("Enter !")
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
                .padding()
        }
        .environmentObject(student)
    }
}

struct StudentInfoView: View {
    @EnvironmentObject var student: StudentData
    
    var body: some View {
        VStack {
            Text("\(student.grade)학년 \(student.class)반 \(student.number)번")
            Text("\(student.department)학과 \(student.name)학생")
            Text("확인 여부: \(student.checked ? "확인" : "미확인")")
        }
        .font(.title)
        .bold()
    }
}

struct EnterStudentView: View {
    @EnvironmentObject var student: StudentData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter Student")
                .font(.largeTitle)
                .fontWeight(.heavy)
            HStack {
                VStack(spacing: 5) {
                    Text("Grade")
                        .bold()
                    Picker(selection: $student.grade, label: Text("Grade")) {
                        ForEach(1...3, id: \.self) {
                            Text("\($0)")
                        }
                    }
                }
                Spacer()
                VStack(spacing: 5) {
                    Text("Class")
                        .bold()
                    Picker(selection: $student.class, label: Text("Class")) {
                        ForEach(1...4, id: \.self) {
                            Text("\($0)")
                        }
                    }
                }
                Spacer()
                VStack(spacing: 5) {
                    Text("Number")
                        .bold()
                    Picker(selection: $student.number, label: Text("Number")) {
                        ForEach(1...18, id: \.self) {
                            Text("\($0)")
                        }
                    }
                }
            }
            TextField("Name", text: $student.name)
                .textFieldStyle(.roundedBorder)
            Picker(selection: $student.department, label: Text("Department")) {
                Text("software")
                    .tag(Department.software)
                Text("iot")
                    .tag(Department.iot)
                Text("ai")
                    .tag(Department.ai)
            }
            .pickerStyle(.segmented)
            Toggle(isOn: $student.checked) {
                Text("Check")
                    .bold()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    Assignment()
}
