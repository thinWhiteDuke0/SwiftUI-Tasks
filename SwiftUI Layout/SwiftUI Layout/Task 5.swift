import SwiftUI


struct Task5: View {


  var body: some View {
    CardView(title: "Profile") {
      Image(systemName: "person.crop.circle.fill")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 50, height: 50)
    }

  }
}
struct CardView<Content: View>: View {
    let title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .center, spacing: 100) {
            Text(title)
                .font(.headline)

            content
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.horizontal)
    }
}
#Preview {
  Task5()
}
