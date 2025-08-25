//
//  ContentView.swift
//  SwiftUI Layout
//
//  Created by Giorgi Manjavidze on 25.08.25.
//

import SwiftUI

struct ContentView: View {

    @State private var showGreeting = true

    var body: some View {
      VStack(spacing: 80) {
        Toggle("Show Greeting", isOn: $showGreeting)

        if showGreeting {
          Text("Hello, World!")
            .font(.largeTitle)
        } else {
          Text("Bye Bye")
            .font(.largeTitle)
        }
      }
      .padding()
      .animation(.easeIn, value: showGreeting)
      .background(Color.blue)
    }
}

#Preview {
    ContentView()
}
