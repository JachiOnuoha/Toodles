//
//  ViewController.swift
//  Toodles
//
//  Created by Jachimike Onuoha on 7/6/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newTaskButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newTaskButton.layer.cornerRadius = newTaskButton.bounds.width / 2
        newTaskButton.layer.masksToBounds = true
        
    }


    @IBAction func createTask(_ sender: Any) {
        print("Task Created")
    }
    
}

