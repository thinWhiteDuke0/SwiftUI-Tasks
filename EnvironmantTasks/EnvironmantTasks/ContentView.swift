//
//  ContentView.swift
//  Environment objects
//
//  Created by Giorgi Manjavidze on 27.08.25.
//

import SwiftUI
import Observation



class Counter: ObservableObject {
  @Published var counterValue: Int = 0

}

struct ContentView: View {
  @StateObject var viewModel: Counter = Counter()
  var body: some View {
    VStack(spacing: 20){
      CounterDisplayView()
      IncrementCounterView()
      DecrementCounterView()
    }
    .environmentObject(viewModel)
  }
}

#Preview {
  ContentView()
}
