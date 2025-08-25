import SwiftUI


struct Task4: View {

  @State private var ToggleStyle = true

  @State private var subtitle = "This is subtitle"

  var body: some View {
    Toggle(isOn: $ToggleStyle) {
      Text(ToggleStyle ? "Light Mode" : "Dark Mode")
        .font(.headline)
    }
    .toggleStyle(.button)
    .tint(ToggleStyle ? .blue : .red)
    .preferredColorScheme(ToggleStyle ? .light: .dark)
    .transition(.opacity)
    .padding()
    .animation(.smooth(duration: 0.9), value: ToggleStyle)
  }
}


#Preview {
  Task4()
}
