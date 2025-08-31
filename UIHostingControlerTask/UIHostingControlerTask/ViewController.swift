//
//  ViewController.swift
//  UIHostingControlerTask
//
//  Created by Giorgi Manjavidze on 31.08.25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        let button = UIButton(type: .system)
        button.setTitle("Show SwiftUI View", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.addTarget(self, action: #selector(showSwiftUIView), for: .touchUpInside)

        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func showSwiftUIView() {
        let hostingController = UIHostingController(
            rootView: SwiftUIView {
                self.dismiss(animated: true)
            }
        )

        hostingController.modalPresentationStyle = .fullScreen
        present(hostingController, animated: true, completion: nil)
    }
}
