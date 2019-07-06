//
//  ViewController.swift
//  Toodles
//
//  Created by Jachimike Onuoha on 7/6/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    // Allocates the elements such as the create task button and the text fields
    @IBOutlet weak var todoTableView: UITableView!
    @IBOutlet weak var newTaskButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    var todos: [String] = []
    
    var lastY: CGFloat = 100
    
    // Setup Protocol
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Makes the button round
        newTaskButton.layer.cornerRadius = newTaskButton.bounds.width / 2
        newTaskButton.layer.masksToBounds = true
        
        //Draws the table data from the data view table we inserted
        todoTableView.delegate = self
        todoTableView.dataSource = self
    }
    
    // Table Cell Setup
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! ToDoCell
        cell.todoLabel.text = todos[indexPath.row]
        return cell
    }
    
    // Check is task is completed and apply tickmark
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ToDoCell
        
        if cell.isChecked == false{
            cell.checkmarkImage.image = UIImage(named: "checkmark.png")
            cell.isChecked = true
        }
            
        else
        {
            cell.checkmarkImage.image = nil
            cell.isChecked = false
        }
    }
    // Create new task button
    @IBAction func createTask(_ sender: Any) {
        if textField.text != ""{
            self.todos.append(textField.text!)
            self.todoTableView.reloadData()
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

