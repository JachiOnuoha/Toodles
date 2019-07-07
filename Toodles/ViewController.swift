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
    
    // Table Cell Setup 1
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
     // Table Cell setup 2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    // Todo Cell Setup
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! ToDoCell
        cell.todoLabel.text = todos[indexPath.row]
        return cell
    }
    
    // Check is task is completed and applies tickmark
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ToDoCell
        
        if cell.isChecked == false{
            cell.checkmarkImage.image = UIImage(named: "checkmark.png")
            cell.isChecked = true
        }
            
        else
        {
            cell.checkmarkImage.image = UIImage(named: "specTask.png")
            cell.isChecked = false
        }
    }
    // Create new task button
    @IBAction func createTask(_ sender: Any) {
        if textField.text != ""
        {
            // Adds new Task to the todos List which then adds it to the table cell
            self.todos.append(textField.text!)
            // Clears the text field
            textField.text = ""
            self.todoTableView.reloadData()
            }
    }
    
    // Slide to delete task function
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            todos.remove(at: indexPath.row)
            todoTableView.reloadData()
        }
    }
    
}

