//
//  ContentView.swift
//  Environment objects
//
//  Created by Giorgi Manjavidze on 27.08.25.
//

import SwiftUI
import Observation




struct RootView: View {
    var body: some View {
        VStack(spacing: 20) {
            CounterDisplayView()
            IncrementCounterView()
            DecrementCounterView()
        }
        .padding()
    }
}
#Preview {
    RootView()
}
