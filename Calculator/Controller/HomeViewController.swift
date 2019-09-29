//
//  ViewController.swift
//  Calculator
//
//  Created by Alejandro on 9/25/19.
//  Copyright © 2019 Alejandro. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController {
    
    let buttonsSize = UIScreen.main.bounds.size.width/5.5
    
    var contentStackView = UIStackView()
    var firstLineButtonsStackView = UIStackView()
    var secondLineButtonStackView = UIStackView()
    var thirdLineButtonStackView  = UIStackView()
    var fourthLineButtonStackView = UIStackView()
    var fifthLineButtonStackView  = UIStackView()
    
    let darkGrayColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
    let orangeColor = UIColor(red: 254/255, green: 148/255, blue: 0, alpha: 1)
    
    lazy var operationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 70, weight: .medium)
        label.textAlignment = .right
        label.backgroundColor = .black
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var acButton: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = .lightGray
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAcButton), for: .touchUpInside)
        return button
    }()
    
    lazy var morelessButton: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = .lightGray
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handlePlusMinusButton), for: .touchUpInside)
        return button
    }()
    
    lazy var percentButton: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = .lightGray
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handlePercentButton), for: .touchUpInside)
        return button
    }()
    
    lazy var dividedByButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = orangeColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleDivisionButton), for: .touchUpInside)
        return button
    }()
    
    lazy var sevenButton: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.tag = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var eightButton: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.tag = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var nineButton: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.tag = 9
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var timesButton: UIButton = {
        let button = UIButton()
        button.setTitle("x", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = orangeColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMultiplicationButton), for: .touchUpInside)
        return button
    }()
    
    lazy var fourButton: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.clipsToBounds = true
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var fiveButton: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.clipsToBounds = true
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var sixButton: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 6
        button.round(buttonSize: self.buttonsSize)
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = orangeColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleSubstractionButton), for: .touchUpInside)
        return button
    }()
    
    lazy var oneButton: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.tag = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var twoButton: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 2
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var threeButton: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.tag = 3
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = orangeColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleAdditionButton), for: .touchUpInside)
        return button
    }()
    
    lazy var zeroButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.tag = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleNumbersButton), for: .touchUpInside)
        return button
    }()
    
    lazy var commaButton: UIButton = {
        let button = UIButton()
        button.setTitle(",", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = darkGrayColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleCommaButton), for: .touchUpInside)
        return button
    }()
    
    lazy var equalsButton: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        button.backgroundColor = orangeColor
        button.round(buttonSize: self.buttonsSize)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleResultButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        operationsDisplay()
        firstLineButtons()
        secondLineButtons()
        thirdLineButtons()
        fourthLineButtons()
        fifthLineButtons()
        setup()
    }
    
    func operationsDisplay(){
        
        view.addSubview(operationLabel)
        
        operationLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        operationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        operationLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        operationLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    func firstLineButtons(){
        let acButtonContainerView = UIView()
        let morelessButtonContainerView = UIView()
        let percentButtonContainerView = UIView()
        let dividedByButtonContainerView = UIView()
        
        firstLineButtonsStackView = UIStackView(arrangedSubviews: [acButtonContainerView, morelessButtonContainerView, percentButtonContainerView, dividedByButtonContainerView])
        firstLineButtonsStackView.axis = .horizontal
        firstLineButtonsStackView.distribution = .fillEqually
        firstLineButtonsStackView.spacing = 5
        firstLineButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(firstLineButtonsStackView)
        
        firstLineButtonsStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        firstLineButtonsStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        firstLineButtonsStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        firstLineButtonsStackView.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        acButtonContainerView.addSubview(acButton)
        morelessButtonContainerView.addSubview(morelessButton)
        percentButtonContainerView.addSubview(percentButton)
        dividedByButtonContainerView.addSubview(dividedByButton)
        
        acButton.centerXAnchor.constraint(equalTo: acButtonContainerView.centerXAnchor).isActive = true
        acButton.centerYAnchor.constraint(equalTo: acButtonContainerView.centerYAnchor).isActive = true
        acButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        acButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        morelessButton.centerXAnchor.constraint(equalTo: morelessButtonContainerView.centerXAnchor).isActive = true
        morelessButton.centerYAnchor.constraint(equalTo: morelessButtonContainerView.centerYAnchor).isActive = true
        morelessButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        morelessButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        percentButton.centerXAnchor.constraint(equalTo: percentButtonContainerView.centerXAnchor).isActive = true
        percentButton.centerYAnchor.constraint(equalTo: percentButtonContainerView.centerYAnchor).isActive = true
        percentButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        percentButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        dividedByButton.centerXAnchor.constraint(equalTo: dividedByButtonContainerView.centerXAnchor).isActive = true
        dividedByButton.centerYAnchor.constraint(equalTo: dividedByButtonContainerView.centerYAnchor).isActive = true
        dividedByButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        dividedByButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
    }
    
    func secondLineButtons(){
        let sevenButtonContainerView = UIView()
        let eightButtonContainerView = UIView()
        let nineButtonContainerView = UIView()
        let timesButtonContainerView = UIView()
        
        secondLineButtonStackView = UIStackView(arrangedSubviews: [sevenButtonContainerView, eightButtonContainerView, nineButtonContainerView, timesButtonContainerView])
        secondLineButtonStackView.axis = .horizontal
        secondLineButtonStackView.distribution = .fillEqually
        secondLineButtonStackView.spacing = 5
        secondLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(secondLineButtonStackView)
        
        secondLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        secondLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        secondLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        secondLineButtonStackView.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        sevenButtonContainerView.addSubview(sevenButton)
        eightButtonContainerView.addSubview(eightButton)
        nineButtonContainerView.addSubview(nineButton)
        timesButtonContainerView.addSubview(timesButton)
        
        sevenButton.centerXAnchor.constraint(equalTo: sevenButtonContainerView.centerXAnchor).isActive = true
        sevenButton.centerYAnchor.constraint(equalTo: sevenButtonContainerView.centerYAnchor).isActive = true
        sevenButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        sevenButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        eightButton.centerXAnchor.constraint(equalTo: eightButtonContainerView.centerXAnchor).isActive = true
        eightButton.centerYAnchor.constraint(equalTo: eightButtonContainerView.centerYAnchor).isActive = true
        eightButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        eightButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        nineButton.centerXAnchor.constraint(equalTo: nineButtonContainerView.centerXAnchor).isActive = true
        nineButton.centerYAnchor.constraint(equalTo: nineButtonContainerView.centerYAnchor).isActive = true
        nineButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        nineButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        timesButton.centerXAnchor.constraint(equalTo: timesButtonContainerView.centerXAnchor).isActive = true
        timesButton.centerYAnchor.constraint(equalTo: timesButtonContainerView.centerYAnchor).isActive = true
        timesButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        timesButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
    }
    
    func thirdLineButtons(){
        let fourButtonContainerView = UIView()
        let fiveButtonContainerView = UIView()
        let sixButtonContainerView = UIView()
        let minusButtonContainerView = UIView()
        
        thirdLineButtonStackView = UIStackView(arrangedSubviews: [fourButtonContainerView, fiveButtonContainerView, sixButtonContainerView, minusButtonContainerView])
        thirdLineButtonStackView.axis = .horizontal
        thirdLineButtonStackView.distribution = .fillEqually
        thirdLineButtonStackView.spacing = 5
        thirdLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(thirdLineButtonStackView)
        
        thirdLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        thirdLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        thirdLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        thirdLineButtonStackView.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        fourButtonContainerView.addSubview(fourButton)
        fiveButtonContainerView.addSubview(fiveButton)
        sixButtonContainerView.addSubview(sixButton)
        minusButtonContainerView.addSubview(minusButton)
        
        fourButton.centerXAnchor.constraint(equalTo: fourButtonContainerView.centerXAnchor).isActive = true
        fourButton.centerYAnchor.constraint(equalTo: fourButtonContainerView.centerYAnchor).isActive = true
        fourButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        fourButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        fiveButton.centerXAnchor.constraint(equalTo: fiveButtonContainerView.centerXAnchor).isActive = true
        fiveButton.centerYAnchor.constraint(equalTo: fiveButtonContainerView.centerYAnchor).isActive = true
        fiveButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        fiveButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        sixButton.centerXAnchor.constraint(equalTo: sixButtonContainerView.centerXAnchor).isActive = true
        sixButton.centerYAnchor.constraint(equalTo: sixButtonContainerView.centerYAnchor).isActive = true
        sixButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        sixButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        minusButton.centerXAnchor.constraint(equalTo: minusButtonContainerView.centerXAnchor).isActive = true
        minusButton.centerYAnchor.constraint(equalTo: minusButtonContainerView.centerYAnchor).isActive = true
        minusButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        minusButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
    }
    
    func fourthLineButtons(){
        let oneButtonContainerView = UIView()
        let twoButtonContainerView = UIView()
        let threeButtonContainerView = UIView()
        let plusButtonContainerView = UIView()
        
        fourthLineButtonStackView = UIStackView(arrangedSubviews: [oneButtonContainerView, twoButtonContainerView, threeButtonContainerView, plusButtonContainerView])
        fourthLineButtonStackView.axis = .horizontal
        fourthLineButtonStackView.distribution = .fillEqually
        firstLineButtonsStackView.spacing = 5
        fourthLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(fourthLineButtonStackView)
        
        fourthLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        fourthLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        fourthLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        fourthLineButtonStackView.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        oneButtonContainerView.addSubview(oneButton)
        twoButtonContainerView.addSubview(twoButton)
        threeButtonContainerView.addSubview(threeButton)
        plusButtonContainerView.addSubview(plusButton)
        
        oneButton.centerXAnchor.constraint(equalTo: oneButtonContainerView.centerXAnchor).isActive = true
        oneButton.centerYAnchor.constraint(equalTo: oneButtonContainerView.centerYAnchor).isActive = true
        oneButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        oneButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        twoButton.centerXAnchor.constraint(equalTo: twoButtonContainerView.centerXAnchor).isActive = true
        twoButton.centerYAnchor.constraint(equalTo: twoButtonContainerView.centerYAnchor).isActive = true
        twoButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        twoButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        threeButton.centerXAnchor.constraint(equalTo: threeButtonContainerView.centerXAnchor).isActive = true
        threeButton.centerYAnchor.constraint(equalTo: threeButtonContainerView.centerYAnchor).isActive = true
        threeButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        threeButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        plusButton.centerXAnchor.constraint(equalTo: plusButtonContainerView.centerXAnchor).isActive = true
        plusButton.centerYAnchor.constraint(equalTo: plusButtonContainerView.centerYAnchor).isActive = true
        plusButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        plusButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
    }
    
    func fifthLineButtons(){
        
        let zeroButtonContainerView = UIView()
        let zeroButtonContainerViewTwo = UIView()
        let commaButtonContainerView = UIView()
        let equalsButtonContainerView = UIView()
        
        fifthLineButtonStackView = UIStackView(arrangedSubviews: [zeroButtonContainerView, zeroButtonContainerViewTwo, commaButtonContainerView, equalsButtonContainerView])
        fifthLineButtonStackView.axis = .horizontal
        fifthLineButtonStackView.distribution = .fillEqually
        fifthLineButtonStackView.spacing = 5
        fifthLineButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(fifthLineButtonStackView)
        
        fifthLineButtonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        fifthLineButtonStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        fifthLineButtonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        fifthLineButtonStackView.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        zeroButtonContainerViewTwo.addSubview(zeroButton)
        commaButtonContainerView.addSubview(commaButton)
        equalsButtonContainerView.addSubview(equalsButton)
        
        zeroButton.rightAnchor.constraint(equalTo: zeroButtonContainerView.rightAnchor, constant: buttonsSize+buttonsSize*0.1+2.5).isActive = true
        zeroButton.centerYAnchor.constraint(equalTo: zeroButtonContainerView.centerYAnchor).isActive = true
        zeroButton.widthAnchor.constraint(equalToConstant: buttonsSize*2.2).isActive = true
        zeroButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        commaButton.centerXAnchor.constraint(equalTo: commaButtonContainerView.centerXAnchor).isActive = true
        commaButton.centerYAnchor.constraint(equalTo: commaButtonContainerView.centerYAnchor).isActive = true
        commaButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        commaButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
        equalsButton.centerXAnchor.constraint(equalTo: equalsButtonContainerView.centerXAnchor).isActive = true
        equalsButton.centerYAnchor.constraint(equalTo: equalsButtonContainerView.centerYAnchor).isActive = true
        equalsButton.widthAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        equalsButton.heightAnchor.constraint(equalToConstant: buttonsSize).isActive = true
        
    }
    
    func setup(){
        
        contentStackView = UIStackView(arrangedSubviews: [firstLineButtonsStackView, secondLineButtonStackView, thirdLineButtonStackView, fourthLineButtonStackView, fifthLineButtonStackView])
        contentStackView.axis = .vertical
        contentStackView.distribution = .fillEqually
        contentStackView.spacing = 15
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(contentStackView)
        
        contentStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        //contentStackView.topAnchor.constraint(equalTo: operationLabel.bottomAnchor, constant: 40).isActive = true
        contentStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        contentStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
    }
    
    @objc func handleAcButton(sender: UIButton){
        sender.shine()
        print("AC")
    }
    @objc func handlePlusMinusButton(sender: UIButton){
        sender.shine()
        print("+/-")
    }
    @objc func handlePercentButton(sender: UIButton){
        sender.shine()
        print("%")
    }
    @objc func handleDivisionButton(sender: UIButton){
        sender.shine()
        print("/")
    }
    @objc func handleMultiplicationButton(sender: UIButton){
        sender.shine()
        print("x")
    }
    @objc func handleAdditionButton(sender: UIButton){
        sender.shine()
        print("+")
    }
    @objc func handleResultButton(sender: UIButton){
        sender.shine()
        print("=")
    }
    @objc func handleCommaButton(sender: UIButton){
        sender.shine()
        print(",")
    }
    @objc func handleSubstractionButton(sender: UIButton){
        sender.shine()
        print("-")
    }
    @objc func handleNumbersButton(sender: UIButton){
        sender.shine()
        print(sender.tag)
    }
}

