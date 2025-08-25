import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome")
                    .font(.largeTitle)
                    .bold()

                NavigationLink("Go to Next Screen") {
                    SecondView()
                }
                .buttonStyle(.bordered)
            }
            .padding()
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI Navigation!")
                .font(.title)
                .padding()
        }
        .navigationTitle("Second View")
    }
}

#Preview(body: {
  ContentView()
})
