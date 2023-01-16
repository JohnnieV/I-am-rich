//
//  ViewController.swift
//  I am rich
//
//  Created by Владимир Смирнов on 15.01.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "I AM RICH"
        label.font = UIFont(name: "Arial Bold", size: 40)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private let diamondView: UIImageView = {
        let diamond = UIImageView()
        diamond.image = UIImage(named: "diamond")
        diamond.translatesAutoresizingMaskIntoConstraints = false
        return diamond
        
    }()
    
    private func setupViews() {
        view.backgroundColor = .systemMint
        view.addSubview(textLabel)
        view.addSubview(diamondView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
        
        NSLayoutConstraint.activate([
            diamondView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 200),
            diamondView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            diamondView.heightAnchor.constraint(equalToConstant: 200),
            diamondView.widthAnchor.constraint(equalToConstant: 300)
        
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
   


}

