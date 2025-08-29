//
//  AddTaskView.swift
//  TaskManager
//
//  Created by Giorgi Manjavidze on 29.08.25.
//
import SwiftUI

struct AddTaskView: View {


  @State var newTask: String = ""
  @EnvironmentObject var TaskManager: taskManager


  var body: some View {
    VStack{
      TextField("add an new Fruit", text: $newTask)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .overlay(
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.blue, lineWidth: 1)
        )
        .font(.system(size: 16, weight: .medium))
        .foregroundColor(.primary)
        .autocapitalization(.sentences)
        .disableAutocorrection(false)
        .padding(.top, 50)
        .padding(.horizontal, 20)
        .onSubmit {
          TaskManager.tasks.append(newTask)
          newTask = ""
        }

      Spacer()
    }
  }
}
