import SwiftUI

struct Item: Identifiable {
  let id = UUID()
  let name: String
  var isEnabled: Bool
}


struct Task6: View {
  @State private var groceries: [Item] = [
    Item(name: "Milk", isEnabled: false),
    Item(name: "Eggs", isEnabled: true),
    Item(name: "Bread", isEnabled: false),
    Item(name: "Apples", isEnabled: true)
  ]


  var body: some View {
    List {
      ForEach($groceries) { $grocerie in
        HStack {
          Text(grocerie.name)
          Spacer()
          Toggle("", isOn: $grocerie.isEnabled)
            .labelsHidden()
        }
        .padding(.vertical, 4)
      }

    }
    .listStyle(.insetGrouped)
    .navigationTitle("Grocery List")
  }
}

#Preview {
  Task6()
}
