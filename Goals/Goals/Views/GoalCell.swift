//
//  GoalCell.swift
//  Goals
//
//  Created by Bouziane Bey on 08/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgress: UILabel!
    
    func configureCell(goal: Goal){
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgress.text = String(describing: goal.goalProgress)
    }
    
}
