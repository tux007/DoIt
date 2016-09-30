//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by tom on 30.09.16.
//  Copyright © 2016 tom. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLabel: UILabel!
        
    var task = Task()
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if task.important {
            taskLabel.text = "❗️ \(task.name)"
            
        } else {
            taskLabel.text = task.name
        }
        
    }
    
    @IBAction func completeTapped(_ sender: AnyObject) {
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

}
