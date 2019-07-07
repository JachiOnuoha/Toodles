//
//  ToDoCell.swift
//  Toodles
//
//  Created by Jachimike Onuoha on 7/6/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//
// This file was created as a Cocoa Touch File

import UIKit

class ToDoCell: UITableViewCell {
    
    
    // To do Label and checkmark image 
    @IBOutlet weak var todoLabel: UILabel! // Remember to de-reference ViewController
    @IBOutlet weak var checkmarkImage: UIImageView! // Remember to de-reference ViewController
    
    var isChecked = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
