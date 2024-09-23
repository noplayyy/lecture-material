//
//  ViewController.swift
//  lecture-easily-text-button-uikit
//
//  Created by Yeonju on 9/23/24.
//

import UIKit

class ViewController: UIViewController {
    var text: UILabel = {
        let label = UILabel()
        label.text = "UIKit Example"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .headline)
        button.backgroundColor = .orange
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addView()
        self.setLayout()
        self.setAction()
    }
    
    func addView() {
        self.view.addSubview(text)
        self.view.addSubview(button)
    }
    
    func setLayout() {
        text.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            text.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            text.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 30),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setAction() {
        button.addTarget(self, action: #selector(buttonClicked(
            _:)), for: .touchUpInside)
    }
    
    @objc func buttonClicked(_: UIButton) {
        print("UIKit Button Click !")
        self.view.backgroundColor = .black
    }
}

#Preview {
    ViewController()
}
