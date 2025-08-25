//
//  ContentView.swift
//  Layout Modifiers
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task5: View {
  var body: some View {
    Text("SwiftUI is amazing!")
      .font(.largeTitle)
      .background(.gray)
      .overlay {
        Circle()
          .fill(Color.red.opacity(0.5))
      }
      .clipShape(Circle())
  }
}

#Preview {
  Task5()
}
