//
//  ContentView.swift
//  State Management
//
//  Created by Giorgi Manjavidze on 26.08.25.
//

import SwiftUI

struct SettingItem: Identifiable {
  let id = UUID()
  let name: String
  var isEnabled: Bool
}


struct Task6: View {
  @State private var settings: [SettingItem] = [
    SettingItem(name: "Notifications", isEnabled: true),
    SettingItem(name: "Dark Mode", isEnabled: false),
    SettingItem(name: "Location Access", isEnabled: true),
    SettingItem(name: "Sound", isEnabled: false)
  ]


  var body: some View {
    List {
      ForEach($settings) { $setting in
        Toggle(setting.name, isOn: $setting.isEnabled)
      }
    }
    .navigationTitle("Settings")


  }
}

#Preview {
  Task6()
}
