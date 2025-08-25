import SwiftUI


struct Task3: View {
  let fruits = ["Apple", "Banana", "Cherry"]

  var body: some View {
    NavigationStack {
      List(fruits, id: \.self) { fruit in
        NavigationLink(fruit) {
          FruitDetailView(fruitName: fruit)
        }
      }
      .navigationTitle("Fruits")
    }
  }
}

struct FruitDetailView: View {
    let fruitName: String
    @State private var showSheet = false

    var body: some View {
        VStack(spacing: 20) {
            Text("🍓 \(fruitName)")
                .font(.largeTitle)
                .padding()

            Button("More Info") {
                showSheet = true
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle(fruitName)
        .sheet(isPresented: $showSheet) {
            FruitInfoSheet(fruitName: fruitName)
        }
    }
}

struct FruitInfoSheet: View {
    let fruitName: String

    var body: some View {
        VStack(spacing: 16) {
            Text("More About \(fruitName)")
                .font(.title)

            Text("This is some additional information about \(fruitName). You can customize this content further.")
                .multilineTextAlignment(.center)
                .padding()

            Spacer()
        }
        .padding()
    }
}



#Preview(body: {
  Task3()
})
