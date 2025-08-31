//
//  ContentView.swift
//  UIKitInSwiftUIApp
//
//  Created by Giorgi Manjavidze on 01.09.25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "This is SwiftUI"

    var body: some View {
        VStack(spacing: 30) {
            Text(message)
                .font(.title2)
                .foregroundColor(.blue)

            Divider()

            UIKitViewWrapper {
                // This runs when the UIKit button is tapped
                message = "Button tapped in UIKit!"
            }
            .frame(height: 150)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
