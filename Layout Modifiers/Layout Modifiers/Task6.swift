//
//  ContentView.swift
//  Layout Modifiers
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task6: View {
  @State private var isEnabled = true

  var body: some View {
    VStack(spacing: 20) {
      Button("Tap Me") {
        print("Button tapped!")
      }
      .customButtonStyle(isEnabled: isEnabled)
      .disabled(!isEnabled)

      Toggle("Enable Button", isOn: $isEnabled)
        .padding(.horizontal)
    }
    .padding()
  }
}

struct CustomButtonStyle: ViewModifier {
  var isEnabled: Bool

  func body(content: Content) -> some View {
    content
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .background(isEnabled ? Color.blue : Color.gray)
      .cornerRadius(10)
      .opacity(isEnabled ? 1.0 : 0.6)
  }
}

extension View {
  func customButtonStyle(isEnabled: Bool) -> some View {
    self.modifier(CustomButtonStyle(isEnabled: isEnabled))
  }
}

#Preview {
  Task6()
}
