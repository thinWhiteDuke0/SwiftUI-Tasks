//
//  UIKitViewWrapper.swift
//  UIKitInSwiftUIApp
//
//  Created by Giorgi Manjavidze on 01.09.25.
//


import SwiftUI

struct UIKitViewWrapper: UIViewControllerRepresentable {
    // Callback to SwiftUI
    var onTap: () -> Void

    func makeUIViewController(context: Context) -> HelloUIKitViewController {
        let vc = HelloUIKitViewController()
        vc.delegate = context.coordinator
        return vc
    }

    func updateUIViewController(_ uiViewController: HelloUIKitViewController, context: Context) {
        // No update needed
    }

    // MARK: - Coordinator
    func makeCoordinator() -> Coordinator {
        Coordinator(onTap: onTap)
    }

    class Coordinator: NSObject, HelloUIKitViewControllerDelegate {
        var onTap: () -> Void

        init(onTap: @escaping () -> Void) {
            self.onTap = onTap
        }

        func didTapUIKitButton() {
            onTap()
        }
    }
}
