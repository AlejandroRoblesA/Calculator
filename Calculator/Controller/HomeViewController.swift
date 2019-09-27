//
//  ViewController.swift
//  Calculator
//
//  Created by Alejandro on 9/25/19.
//  Copyright © 2019 Alejandro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    let acButton: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let morelessButton: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let percentButton: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let dividedByButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    //equals =
    //times = x
    //minus = -
    //plus = +

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        view.addSubview(acButton)
        view.addSubview(morelessButton)
        view.addSubview(percentButton)
        view.addSubview(dividedByButton)
        
        acButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        acButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        acButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        acButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        morelessButton.leftAnchor.constraint(equalTo: acButton.rightAnchor, constant: 20).isActive = true
        morelessButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        morelessButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        morelessButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        percentButton.leftAnchor.constraint(equalTo: morelessButton.rightAnchor, constant: 20).isActive = true
        percentButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        percentButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        percentButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        dividedByButton.leftAnchor.constraint(equalTo: percentButton.rightAnchor, constant: 20).isActive = true
        dividedByButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        dividedByButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        dividedByButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
    }
    
    @objc func handleAcButton(){
        print("AC")
    }
}

