//
//  CreateGoalVC.swift
//  Goals
//
//  Created by Bouziane Bey on 09/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextField: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalTextField.delegate = self
        nextBtn.bindToKeyboard()
        shortTermBtn.selectedColor()
        longTermBtn.deselectedColor()
    }

    @IBAction func nextBtnPressed(_ sender: Any) {
        if goalTextField.text != "" && goalTextField.text != "What is your goal ?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else {return}
            finishGoalVC.initData(description: goalTextField.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
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
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextField.text = ""
        goalTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
