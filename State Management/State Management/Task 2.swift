//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task2: View {

  @State private var showText: Bool = false

  var body: some View {
    VStack(spacing: 20) {
      Toggle("Show Greeting", isOn: $showText)
        .padding()

      if showText {
        Text("Hello, SwiftUI!")
          .font(.title)
          .transition(.opacity)
      }
    }
    .animation(.default, value: showText)
    .padding()


  }
}

#Preview {
  Task2()
}
