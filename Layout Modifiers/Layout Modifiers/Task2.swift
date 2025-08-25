//
//  ContentView.swift
//  Layout Modifiers
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task2: View {
  var body: some View {
    ZStack(alignment: .topTrailing) {
      Rectangle()
        .fill(.red)
        .frame(width: 150, height: 100, alignment: .center)
      Rectangle()
        .frame(width: 100, height: 50)
    }
  }
}

#Preview {
  Task2()
}
