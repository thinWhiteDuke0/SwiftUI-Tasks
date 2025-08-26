//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI
import Observation

@Observable
class FormModel {
  var username: String = ""
}

struct Task5: View {
  @State private var form = FormModel()


  var body: some View {
    Form {
      Section(header: Text("User Info")) {
        TextField("Enter username", text: $form.username)
          .textFieldStyle(.roundedBorder)
      }

      Section {
        Button("Submit") {
          print("Submitted username: \(form.username)")
        }
        .disabled(form.username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
      }
    }
    .navigationTitle("User Form")


  }
}

#Preview {
  Task5()
}
