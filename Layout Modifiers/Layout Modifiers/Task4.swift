//
//  ContentView.swift
//  Layout Modifiers
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task4: View {
  var body: some View {
    ZStack {
      Circle()
        .fill(.blue)
        .frame(width: 200, height: 200)
        .offset(x:-200, y: -400)
    }
    Rectangle()
      .fill(Color.green)
      .frame(width: 150, height: 80)
      .offset(x: -180, y: -450)
  }
}

#Preview {
  Task4()
}
