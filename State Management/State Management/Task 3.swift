//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task3: View {

  @State private var isOn: Bool = false

  var body: some View {
    VStack(spacing: 20) {
      Text("Parent state: \(isOn ? "ON" : "OFF")")
        .font(.headline)

      ChildToggleView(isOn: $isOn)
    }
    .padding()
  }
}

struct ChildToggleView: View {
  @Binding var isOn: Bool

  var body: some View {
    Toggle("Child Toggle", isOn: $isOn)
      .toggleStyle(SwitchToggleStyle())
      .padding()
  }
}

#Preview {
  Task3()
}
