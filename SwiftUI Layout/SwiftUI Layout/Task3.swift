import SwiftUI


struct Task3: View {

  @State private var name = "Name"

  @State private var subtitle = "This is subtitle"

  var body: some View {
    HStack(spacing: 50) {
      Image(systemName: "person.crop.circle.fill")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
        .shadow(radius: 4)
      VStack (spacing: 20){
        Text(name)
          .font(.title2)
        Text(subtitle)
          .font(.subheadline)
          .foregroundColor(.gray)
      }
    }
    .padding()
  }
}
#Preview {
  Task3()
}
