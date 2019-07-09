//
//  CreateGoalVC.swift
//  Goals
//
//  Created by Bouziane Bey on 09/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextField: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.selectedColor()
        longTermBtn.deselectedColor()
    }

    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    
    @IBAction func shortTermPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.selectedColor()
        longTermBtn.deselectedColor()
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.selectedColor()
        shortTermBtn.deselectedColor()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
}
