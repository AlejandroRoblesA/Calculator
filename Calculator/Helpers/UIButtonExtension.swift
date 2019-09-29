//
//  UIButtonExtension.swift
//  Calculator
//
//  Created by Alejandro on 9/28/19.
//  Copyright © 2019 Alejandro. All rights reserved.
//

import UIKit

extension UIButton{
    func round(buttonSize: CGFloat){
        layer.cornerRadius = buttonSize/2
        clipsToBounds = true
    }
    
    func shine(){
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) { (completion) in
            UIView.animate(withDuration: 0.1) {
                self.alpha = 1
            }
        }
    }
}
