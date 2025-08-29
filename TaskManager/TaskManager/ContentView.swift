//
//  ContentView.swift
//  TaskManager
//
//  Created by Giorgi Manjavidze on 29.08.25.
//

import SwiftUI



struct ContentView: View {

  @StateObject var TaskManager: taskManager = taskManager()

  var body: some View {
    TabView {
      TaskListView()
        .tabItem {
          Label("Fruits", systemImage: "list.bullet")
            .font(.system(size: 16, weight: .medium))
        }
      AddTaskView()
        .tabItem {
          Label("Add", systemImage: "plus")
            .font(.system(size: 16, weight: .medium))
        }
      RemoveTaskView()
        .tabItem {
          Label("Remove", systemImage: "minus")
            .font(.system(size: 16, weight: .medium))
        }
    }
    .tint(.indigo)
    .environmentObject(TaskManager)
  }
}









#Preview {
  ContentView()
}
