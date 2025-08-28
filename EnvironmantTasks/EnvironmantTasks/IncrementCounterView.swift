//
//  IncrementCounterView.swift
//  Environment objects
//
//  Created by Giorgi Manjavidze on 27.08.25.
//
import SwiftUI

struct IncrementCounterView: View {
    @EnvironmentObject var viewModel: Counter

    var body: some View {
        Button(action: {
            viewModel.counterValue += 1
        }) {
            Text("Increment")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}
