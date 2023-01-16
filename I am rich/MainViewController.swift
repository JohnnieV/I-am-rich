//
//  ViewController.swift
//  I am rich
//
//  Created by Владимир Смирнов on 15.01.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .center
        view.distribution = .equalSpacing
        view.spacing = 100
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
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
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(diamondView)
        view.addSubview(stackView)
        
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
        
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: stackView.centerXAnchor)
            
            
        
        ])
        
        
        NSLayoutConstraint.activate([
            
            diamondView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
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

