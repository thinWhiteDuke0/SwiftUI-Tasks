//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI
import Observation

@Observable
class SharedCounter {
  var count: Int = 0
}

struct Task7: View {

  @State private var counter = SharedCounter()

  var body: some View {
    VStack(spacing: 40) {
      Text("Main Counter View")
        .font(.title)

      HStack {
        CounterViewA(counter: counter)
        CounterViewB(counter: counter)
      }
    }
    .padding()

  }
}

struct CounterViewA: View {
    var counter: SharedCounter

    var body: some View {
        VStack {
            Text("View A: \(counter.count)")
                .font(.headline)

            Button("Add +1") {
                counter.count += 1
            }
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(10)
    }
}

struct CounterViewB: View {
    var counter: SharedCounter

    var body: some View {
        VStack {
            Text("View B: \(counter.count)")
                .font(.headline)

            Button("Add +1") {
                counter.count += 1
            }
        }
        .padding()
        .background(Color.green.opacity(0.1))
        .cornerRadius(10)
    }
}


#Preview {
  Task7()
}
