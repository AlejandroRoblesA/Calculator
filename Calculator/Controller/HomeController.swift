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
        result()
    }
    
    @objc func handleAcButton(sender: UIButton){
        clear()
        sender.shine()
    }
    @objc func handlePlusMinusButton(sender: UIButton){
        
        temp = temp * -1
        operationLabel.text = printFormatter.string(from: NSNumber(value: temp))
        sender.shine()
        
    }
    @objc func handlePercentButton(sender: UIButton){
        
        if operation != .percent{
            result()
        }
        operating = true
        operation = .percent
        result()
        sender.shine()
    }
    @objc func handleDivisionButton(sender: UIButton){
        if (operation != .none){
            result()
        }
        operating = true
        operation = .division
        sender.selectOperation(selected: true)
        sender.shine()
    }
    @objc func handleMultiplicationButton(sender: UIButton){
        if (operation != .none){
            result()
        }
        operating = true
        operation = .multiplication
        sender.selectOperation(selected: true)
        sender.shine()
    }
    @objc func handleAdditionButton(sender: UIButton){
        if (operation != .none){
            result()
        }
        
        operating = true
        operation = .addition
        sender.selectOperation(selected: true)
        sender.shine()
    }
    @objc func handleResultButton(sender: UIButton){
        result()
        sender.shine()
    }
    @objc func handleCommaButton(sender: UIButton){
        let currentTemp = auxTotalFormater.string(from: NSNumber(value: temp))!
        if (!operating && currentTemp.count >= maxLenght){
            return
        }
        operationLabel.text = operationLabel.text! + decimalSeparator
        decimal = true
        selectVisualOperation()
        sender.shine()
    }
    @objc func handleSubstractionButton(sender: UIButton){
        if (operation != .none){
            result()
        }
        operating = true
        operation = .substraction
        sender.selectOperation(selected: true)
        sender.shine()
    }
    @objc func handleNumbersButton(sender: UIButton){
        
        acButton.setTitle("C", for: .normal)
        
        var currentTemp = auxTotalFormater.string(from: NSNumber(value: temp))!
        
        if (!operating && currentTemp.count >= maxLenght){
            return
        }
        
        currentTemp = auxFormater.string(from: NSNumber(value: temp))!
        
        if operating {
            total = total == 0 ? temp : total
            operationLabel.text = ""
            currentTemp = ""
            operating = false
        }
        
        if decimal{
            currentTemp = "\(currentTemp)\(decimalSeparator)"
            decimal = false
        }
        
        
        let number = sender.tag
        temp = Double(currentTemp + String(number))!
        operationLabel.text = printFormatter.string(from: NSNumber(value: temp))
        
        selectVisualOperation()
        
        sender.shine()
    }
    
    func clear(){
        operation = .none
        acButton.setTitle("AC", for: .normal)
        if temp != 0{
            temp = 0
            operationLabel.text = "0"
        }
        else{
            temp = 0
            result()
        }
    }
    
    func result(){
        switch operation {
        case .none:
            break
        case .addition:
            total = total + temp
            break
        case .substraction:
            total = total - temp
            break
        case .multiplication:
            total = total * temp
            break
        case .division:
            total = total / temp
            break
        case .percent:
            temp = temp / 100
            total = temp
            break
        }
        
        if let currentTotal = auxTotalFormater.string(from: NSNumber(value: total)), currentTotal.count > maxLenght{
            operationLabel.text = printScientificFormatter.string(from: NSNumber(value: total))
        }
        else{
            operationLabel.text = printFormatter.string(from: NSNumber(value: total))
        }
        
        operation = .none
        selectVisualOperation()
    }
    
    func selectVisualOperation(){
        if !operating{
            dividedByButton.selectOperation(selected: false)
            timesButton.selectOperation(selected: false)
            plusButton.selectOperation(selected: false)
            minusButton.selectOperation(selected: false)
            
        }
        else{
            switch operation {
            case .none, .percent:
                dividedByButton.selectOperation(selected: false)
                timesButton.selectOperation(selected: false)
                plusButton.selectOperation(selected: false)
                minusButton.selectOperation(selected: false)
                break
            case .addition:
                plusButton.selectOperation(selected: true)
                dividedByButton.selectOperation(selected: false)
                timesButton.selectOperation(selected: false)
                minusButton.selectOperation(selected: false)
                break
            case .substraction:
                minusButton.selectOperation(selected: true)
                dividedByButton.selectOperation(selected: false)
                timesButton.selectOperation(selected: false)
                plusButton.selectOperation(selected: false)
                break
            case .multiplication:
                timesButton.selectOperation(selected: true)
                dividedByButton.selectOperation(selected: false)
                plusButton.selectOperation(selected: false)
                minusButton.selectOperation(selected: false)
                break
            case .division:
                dividedByButton.selectOperation(selected: true)
                timesButton.selectOperation(selected: false)
                plusButton.selectOperation(selected: false)
                minusButton.selectOperation(selected: false)
                break
            }
        }
    }
}
