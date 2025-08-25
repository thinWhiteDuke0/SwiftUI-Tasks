//
//  ContentView.swift
//  Layout Modifiers
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct Task1: View {
    var body: some View {
        Text("SwiftUI Layout Modifiers")
        .padding(16)
        .background(.blue)
        .padding([.top, .leading], 16)
        .background(.red)
    }
}

#Preview {
    Task1()
}
