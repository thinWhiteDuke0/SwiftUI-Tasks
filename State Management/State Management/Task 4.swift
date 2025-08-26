//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI
import Observation

struct Task4: View {
  @State private var profile = UserProfile()


  var body: some View {
    Form {
      Section(header: Text("Edit Profile")) {
        TextField("Name", text: $profile.name)
        TextField("Email", text: $profile.email)
      }

      Section(header: Text("Live Preview")) {
        Text("Name: \(profile.name)")
        Text("Email: \(profile.email)")
      }
    }
    .navigationTitle("Profile Editor")

  }
}

@Observable
class UserProfile {
  var name: String = ""
  var email: String = ""
}

#Preview {
  Task4()
}
