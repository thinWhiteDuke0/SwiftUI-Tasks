//
//  RemoveTaskView.swift
//  TaskManager
//
//  Created by Giorgi Manjavidze on 29.08.25.
//
import SwiftUI

struct RemoveTaskView: View {

  @EnvironmentObject var TaskManager: taskManager
  @State var removeTask: String = ""
  @State var message: String = ""

  var body: some View {
    NavigationView {
      VStack(spacing: 60){
        TextField("Input an fruit which you want to remove", text: $removeTask)
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

          .buttonStyle(.borderedProminent)
        if let index = TaskManager.tasks.firstIndex(of: removeTask) {
          Button(action: {
            TaskManager.tasks.remove(at: index)
            self.message = "Item removed successfully!"
          }) {
            Text("Remove")
              .fontWeight(.semibold)
              .padding()
              .foregroundColor(.white)
              .background(Color.blue)
              .cornerRadius(10)
          }
        } else if removeTask.isEmpty  {
          Text("Please Enter an item")
            .font(.headline)
            .foregroundColor(.gray)
            .italic()

        } else {
          Text("Fruit not found")
            .font(.headline)
            .foregroundColor(.red)
        }
        Spacer()
      }

    }
  }
}
