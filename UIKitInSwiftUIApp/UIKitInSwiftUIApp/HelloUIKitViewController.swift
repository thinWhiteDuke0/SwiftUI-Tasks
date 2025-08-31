//
//  protocol.swift
//  UIKitInSwiftUIApp
//
//  Created by Giorgi Manjavidze on 01.09.25.
//


import UIKit

// Step 1: Define the delegate protocol
protocol HelloUIKitViewControllerDelegate: AnyObject {
    func didTapUIKitButton()
}

class HelloUIKitViewController: UIViewController {

    weak var delegate: HelloUIKitViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        let label = UILabel()
        label.text = "Hello, from UIKit!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)

        let button = UIButton(type: .system)
        button.setTitle("Tap Me", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        // Layout
        let stack = UIStackView(arrangedSubviews: [label, button])
        stack.axis = .vertical
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func buttonTapped() {
        delegate?.didTapUIKitButton()
    }
}
