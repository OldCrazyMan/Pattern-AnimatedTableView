//
//  ViewController.swift
//  AnimatedTableViewCell
//
//  Created by Тимур Ахметов on 02.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var goToTableViewButton: UIButton = {
       let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        button.setTitle("Go to TableView", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(goToTableViewButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Готовая таблица"
        
        setupViews()
        setConstraints()

    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(goToTableViewButton)
    }
    
    @objc private func goToTableViewButtonTapped() {
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
    }
    
    private func setConstraints() {

        NSLayoutConstraint.activate([
            goToTableViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToTableViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            goToTableViewButton.heightAnchor.constraint(equalToConstant: 60),
            goToTableViewButton.widthAnchor.constraint(equalToConstant: 240)
        ])
    }
}

