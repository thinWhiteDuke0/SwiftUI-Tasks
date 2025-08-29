//
//  TaskListView.swift
//  TaskManager
//
//  Created by Giorgi Manjavidze on 29.08.25.
//
import SwiftUI

struct TaskListView: View {
  @EnvironmentObject var TaskManager: taskManager
  var body: some View {
    NavigationView{
      List {
        ForEach(TaskManager.tasks.indices, id: \.self) { index in
          Text("\(index + 1) - \(TaskManager.tasks[index])")
          
        }
      }
      .navigationTitle("Fruits List")
    }

  }
}
