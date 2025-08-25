import SwiftUI


struct Task2: View {

  @State private var names = ["Kant","Nietzche","Russel","Mishima","Bowie"]

  var body: some View {
    List {
      ForEach(names, id: \.self) { name in
        HStack {
          Text("Name is \(name)")
          Spacer()
          Button("Tap") {
            print("Tapped name \(name)")
          }
          .buttonStyle(.bordered)
        }
      }
    }
    .listRowSpacing(20)
  }
}

#Preview {
  Task2()
}
