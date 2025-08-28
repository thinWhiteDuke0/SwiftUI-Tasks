import SwiftUI

struct CounterDisplayView: View {
    @EnvironmentObject var viewModel: Counter

    var body: some View {
        Text("Counter: \(viewModel.counterValue)")
            .font(.largeTitle)
            .bold()
            .padding()
    }
}


#Preview {
  CounterDisplayView()
}
