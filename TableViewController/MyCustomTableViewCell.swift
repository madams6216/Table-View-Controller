//
//  MyCustomTableViewCell.swift
//  TableViewController
//
//  Created by michael adams on 11/30/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var flagImage: UIImageView!
    
    @IBOutlet weak var abbrLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
