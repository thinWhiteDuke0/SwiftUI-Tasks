import SwiftUI


struct Task4: View {
  @State private var path: [Route] = []

  var body: some View {
    NavigationStack(path: $path) {
      VStack {
        Text("Welcome to My App")
          .font(.title)
      }
      .navigationTitle("My App")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            path.append(.settings)
          } label: {
            Image(systemName: "gearshape.fill")
              .imageScale(.large)
          }
        }
      }
      .toolbarBackground(Color.blue, for: .navigationBar)
      .toolbarBackground(.visible, for: .navigationBar)
      .toolbarColorScheme(.light, for: .navigationBar)
      .navigationDestination(for: Route.self) { route in
        switch route {
        case .settings:
          SettingsView2()
        }
      }
    }
  }
}

enum Route: Hashable {
  case settings
}

struct SettingsView2: View {
  var body: some View {
    VStack {
      Text("Settings")
        .font(.largeTitle)
        .padding()
    }
    .navigationBarBackButtonHidden(true)
    .toolbar(.hidden, for: .navigationBar)
  }
}



#Preview(body: {
  Task4()
})
