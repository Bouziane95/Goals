//
//  ViewController.swift
//  Goals
//
//  Created by Bouziane Bey on 08/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("btn was pressed")
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {
            return UITableViewCell()
        }
        
        cell.configureCell(description: "Eat Salad twice a week", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

