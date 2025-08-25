import SwiftUI


enum AppRoute: Hashable {
  case settings
  case profile
  case home
}

struct Task2: View {
  @State private var path: [AppRoute] = []

  var body: some View {
    NavigationStack(path: $path) {
      HomeView(path: $path)
        .navigationDestination(for: AppRoute.self) { route in
          switch route {
          case .settings:
            SettingsView(path: $path)
          case .profile:
            ProfileView(path: $path)
          case .home:
            HomeView(path: $path)
          }
        }
    }
  }
}



struct HomeView: View {
  @Binding var path: [AppRoute]

  var body: some View {
    VStack(spacing: 20) {
      Text("🏠 Home View")
        .font(.largeTitle)

      Button("Go to Settings") {
        path.append(.settings)
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Home")
  }
}



struct SettingsView: View {
  @Binding var path: [AppRoute]

  var body: some View {
    VStack(spacing: 20) {
      Text("⚙️ Settings View")
        .font(.largeTitle)

      Button("Go to Profile") {
        path.append(.profile)
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Settings")
  }
}



struct ProfileView: View {
  @Binding var path: [AppRoute]

  var body: some View {
    VStack(spacing: 20) {
      Text("👤 Profile View")
        .font(.largeTitle)

      Button("Go to Home") {
        path = []
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Profile")
  }
}


#Preview(body: {
  Task2()
})
