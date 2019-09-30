//
//  HomeView.swift
//  Calculator
//
//  Created by Alejandro on 9/28/19.
//  Copyright © 2019 Alejandro. All rights reserved.
//

import UIKit

extension HomeViewController{
    
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
        
        commaButton.setTitle(decimalSeparator, for: .normal)
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
