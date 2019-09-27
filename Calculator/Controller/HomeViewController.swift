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
        button.backgroundColor = .orange
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let sevenButton: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let eightButton: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let nineButton: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let timesButton: UIButton = {
        let button = UIButton()
        button.setTitle("x", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let fourButton: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let fiveButton: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let sixButton: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.clipsToBounds = true
        button.layer.cornerRadius = 28
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    //plus = +

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        firstLineButtons()
        secondLineButtons()
        thirdLineButtons()
        
        //fourthLineButtons()
    }
    
    func firstLineButtons(){
       let acButtonContainerView = UIView()
        let morelessButtonContainerView = UIView()
        let percentButtonContainerView = UIView()
        let dividedByButtonContainerView = UIView()
        
        let firstLineButtonStackView = UIStackView(arrangedSubviews: [acButtonContainerView, morelessButtonContainerView, percentButtonContainerView, dividedByButtonContainerView])
        firstLineButtonStackView.axis = .horizontal
        firstLineButtonStackView.distribution = .fillEqually
        firstLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(firstLineButtonStackView)
        
        firstLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        firstLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        firstLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        firstLineButtonStackView.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        view.addSubview(acButton)
        view.addSubview(morelessButton)
        view.addSubview(percentButton)
        view.addSubview(dividedByButton)
        
        acButton.leftAnchor.constraint(equalTo: acButtonContainerView.leftAnchor, constant: 0).isActive = true
        acButton.topAnchor.constraint(equalTo: acButtonContainerView.topAnchor, constant: 0).isActive = true
        acButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        acButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        morelessButton.leftAnchor.constraint(equalTo: morelessButtonContainerView.leftAnchor, constant: 0).isActive = true
        morelessButton.topAnchor.constraint(equalTo: morelessButtonContainerView.topAnchor, constant: 0).isActive = true
        morelessButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        morelessButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        percentButton.leftAnchor.constraint(equalTo: percentButtonContainerView.leftAnchor, constant: 0).isActive = true
        percentButton.topAnchor.constraint(equalTo: percentButtonContainerView.topAnchor, constant: 0).isActive = true
        percentButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        percentButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        dividedByButton.leftAnchor.constraint(equalTo: dividedByButtonContainerView.leftAnchor, constant: 0).isActive = true
        dividedByButton.topAnchor.constraint(equalTo: dividedByButtonContainerView.topAnchor, constant: 0).isActive = true
        dividedByButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        dividedByButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
    }
    
    func secondLineButtons(){
        let sevenButtonContainerView = UIView()
        let eightButtonContainerView = UIView()
        let nineButtonContainerView = UIView()
        let timesButtonContainerView = UIView()
        
        let secondLineButtonStackView = UIStackView(arrangedSubviews: [sevenButtonContainerView, eightButtonContainerView, nineButtonContainerView, timesButtonContainerView])
        secondLineButtonStackView.axis = .horizontal
        secondLineButtonStackView.distribution = .fillEqually
        secondLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(secondLineButtonStackView)
        
        secondLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        secondLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        secondLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        secondLineButtonStackView.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        view.addSubview(sevenButton)
        view.addSubview(eightButton)
        view.addSubview(nineButton)
        view.addSubview(timesButton)
        
        sevenButton.leftAnchor.constraint(equalTo: sevenButtonContainerView.leftAnchor, constant: 0).isActive = true
        sevenButton.topAnchor.constraint(equalTo: sevenButtonContainerView.topAnchor, constant: 0).isActive = true
        sevenButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        sevenButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        eightButton.leftAnchor.constraint(equalTo: eightButtonContainerView.leftAnchor, constant: 0).isActive = true
        eightButton.topAnchor.constraint(equalTo: eightButtonContainerView.topAnchor, constant: 0).isActive = true
        eightButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        eightButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        nineButton.leftAnchor.constraint(equalTo: nineButtonContainerView.leftAnchor, constant: 0).isActive = true
        nineButton.topAnchor.constraint(equalTo: nineButtonContainerView.topAnchor, constant: 0).isActive = true
        nineButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        nineButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        timesButton.leftAnchor.constraint(equalTo: timesButtonContainerView.leftAnchor, constant: 0).isActive = true
        timesButton.topAnchor.constraint(equalTo: timesButtonContainerView.topAnchor, constant: 0).isActive = true
        timesButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        timesButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
    }
    
    func thirdLineButtons(){
        let fourButtonContainerView = UIView()
        let fiveButtonContainerView = UIView()
        let sixButtonContainerView = UIView()
        let minusButtonContainerView = UIView()
        
        let thirdLineButtonStackView = UIStackView(arrangedSubviews: [fourButtonContainerView, fiveButtonContainerView, sixButtonContainerView, minusButtonContainerView])
        thirdLineButtonStackView.axis = .horizontal
        thirdLineButtonStackView.distribution = .fillEqually
        thirdLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(thirdLineButtonStackView)
        
        thirdLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        thirdLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        thirdLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        thirdLineButtonStackView.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        view.addSubview(fourButton)
        view.addSubview(fiveButton)
        view.addSubview(sixButton)
        view.addSubview(minusButton)
        
        fourButton.leftAnchor.constraint(equalTo: fourButtonContainerView.leftAnchor, constant: 0).isActive = true
        fourButton.topAnchor.constraint(equalTo: fourButtonContainerView.topAnchor, constant: 0).isActive = true
        fourButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        fourButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        fiveButton.leftAnchor.constraint(equalTo: fiveButtonContainerView.leftAnchor, constant: 0).isActive = true
        fiveButton.topAnchor.constraint(equalTo: fiveButtonContainerView.topAnchor, constant: 0).isActive = true
        fiveButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        fiveButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        sixButton.leftAnchor.constraint(equalTo: sixButtonContainerView.leftAnchor, constant: 0).isActive = true
        sixButton.topAnchor.constraint(equalTo: sixButtonContainerView.topAnchor, constant: 0).isActive = true
        sixButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        sixButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        minusButton.leftAnchor.constraint(equalTo: minusButtonContainerView.leftAnchor, constant: 0).isActive = true
        minusButton.topAnchor.constraint(equalTo: minusButtonContainerView.topAnchor, constant: 0).isActive = true
        minusButton.widthAnchor.constraint(equalToConstant: 56).isActive = true
        minusButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
    }
    
    @objc func handleAcButton(){
        print("AC")
    }
}

