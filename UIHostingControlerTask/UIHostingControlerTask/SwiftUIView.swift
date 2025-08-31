//
//  SwiftUIView.swift
//  UIHostingControlerTask
//
//  Created by Giorgi Manjavidze on 31.08.25.
//


import SwiftUI

struct SwiftUIView: View {
    var dismiss: () -> Void

    var body: some View {
        VStack(spacing: 20) {
            Text("This is a SwiftUI View")
                .font(.title)
                .padding()

            Button("Dismiss") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}


#Preview {
  SwiftUIView {

  }
}
