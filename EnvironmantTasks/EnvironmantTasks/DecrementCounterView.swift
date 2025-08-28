//
//  DecrementCounterView.swift
//  Environment objects
//
//  Created by Giorgi Manjavidze on 27.08.25.
//
import SwiftUI

struct DecrementCounterView: View {
    @EnvironmentObject var viewModel: Counter

    var body: some View {
        Button(action: {
            viewModel.counterValue -= 1
        }) {
            Text("Decrement")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}
