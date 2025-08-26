//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task1: View {

  @State private var count = 0

  var body: some View {
    HStack(spacing: 60) {
      Text("Count is \(count)")
        .font(.headline)
      Button("Count +1") {
        count += 1
      }
      .buttonStyle(.borderedProminent)
    }

  }
}

#Preview {
  Task1()
}
