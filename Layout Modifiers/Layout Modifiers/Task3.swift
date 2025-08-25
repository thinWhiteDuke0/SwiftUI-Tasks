//
//  ContentView.swift
//  Layout Modifiers
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task3: View {
  var body: some View {
    HStack(alignment: .center, spacing: 20){
      Text("Item 1")
      Text("Item 2")
      Text("Item 3")
    }
    .font(.headline)
    .padding()


  }
}

#Preview {
  Task3()
}
