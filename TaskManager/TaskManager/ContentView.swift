//
//  ContentView.swift
//  TaskManager
//
//  Created by Giorgi Manjavidze on 29.08.25.
//

import SwiftUI



class taskManager: ObservableObject {
  @Published var tasks = Array<String>()
}

struct ContentView: View {

  @StateObject var TaskManager: taskManager = taskManager()

  var body: some View {
    List {
      ForEach(TaskManager.tasks, id: \.self) { task in
        Text(task)
      }
      .onDelete(perform: { offsets in
        TaskManager.tasks.remove(atOffsets: offsets)
      })
      .onMove(perform: { (indexSet, Int) in
        TaskManager.tasks.move(fromOffsets: indexSet, toOffset: Int)
      })
    }
    .environmentObject(TaskManager)
  }
}

struct taskListView: View {
  @EnvironmentObject var TaskManager: taskManager
  var body: some View {
    List {
      ForEach(TaskManager.tasks, id: \.self) { task in
        Text(task)
      }
      .onDelete(perform: { offsets in
        TaskManager.tasks.remove(atOffsets: offsets)
      })
      .onMove(perform: { (indexSet, Int) in
        TaskManager.tasks.move(fromOffsets: indexSet, toOffset: Int)
      })
    }

  }
}

#Preview {
  ContentView()
}
