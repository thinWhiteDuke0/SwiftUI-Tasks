import SwiftUI



struct Task7: View {

  let name: String
  let age: Int
  let location: String
  let isPremium: Bool

  var body: some View {
    ZStack(alignment: .topTrailing) {
      VStack(alignment: .leading, spacing: 12) {
        HStack {
          Image(systemName: "person.circle.fill")
            .resizable()
            .frame(width: 80, height: 80)
            .foregroundColor(.blue)
          VStack(alignment: .leading, spacing: 4) {
            Text(name)
              .font(.title)
              .bold()
            Text("Age: \(age)")
            Text("Location: \(location)")
              .foregroundColor(.secondary)
          }
          Spacer()
        }

      }
      .padding()
      .background(Color(.systemGray6))
      .cornerRadius(12)
      .shadow(radius: 3)
      .padding()

      if isPremium {
        Text("⭐️ Premium")
          .font(.caption)
          .padding(6)
          .background(Color.yellow)
          .cornerRadius(8)
          .padding([.top, .trailing], 16)
          .transition(.scale)
      }
    }
  }
}



#Preview {
  Task7(name: "Giorgi", age: 22, location: "Rustavi", isPremium: true)
}
