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
    
    func configureCell(description: String, type: GoalType, goalProgressAmount : Int){
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgress.text = String(describing: goalProgressAmount)
    }
    
}
