//
//  UIButtonExtension.swift
//  Goals
//
//  Created by Bouziane Bey on 09/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import UIKit

extension UIButton{
    func selectedColor(){
        self.backgroundColor = #colorLiteral(red: 0.4922404289, green: 0.7722371817, blue: 0.4631441236, alpha: 1)
    }
    
    func deselectedColor(){
        self.backgroundColor = #colorLiteral(red: 0.7464011312, green: 0.8857318759, blue: 0.7402122021, alpha: 1)
    }
}

