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
    @IBOutlet weak var textField: UITextField!
    var lastY: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newTaskButton.layer.cornerRadius = newTaskButton.bounds.width / 2
        newTaskButton.layer.masksToBounds = true
    }


    @IBAction func createTask(_ sender: Any) {
        if textField.text != ""{
            
            /*let contentView = UIView()
            addViewsTo(contentView)
            contentView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(contentView)
            
            // Add size constraints to the content view (260, 30)
            NSLayoutConstraint(item: contentView, attribute: .width, relatedBy: .equal,
                               toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 260.0).isActive = true
            NSLayoutConstraint(item: contentView, attribute: .height, relatedBy: .equal,
                               toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0).isActive = true
            // Add position constraints to the content view (horizontal center, 100 from the top)
            NSLayoutConstraint(item: contentView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: lastY).isActive = true
            NSLayoutConstraint(item: contentView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0).isActive = true
            
            // Update last Y position to have the gaps between views to be 10
            lastY += 40*/
        }
    }
    
    // Add label and button to the content view
    /*func addViewsTo(_ contentView: UIView) {
        // Add a label with size of (100, 30)
        let label = UILabel()
        label.text = textField.text
        label.frame = CGRect(x: -50.0, y: 20.0, width: 100.0, height: 30.0)
        contentView.addSubview(label)
        
        // Add a button with size of (150, 30)
        let button = UIButton()
        button.setTitle("x", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.frame = CGRect(x: 300.0, y: 0.0, width: 50.0, height: 50.0)
        button.layer.cornerRadius = button.bounds.width/2
        button.layer.backgroundColor = UIColor.red.cgColor
        
        contentView.addSubview(button)
    } */
    
}

