//
//  ViewController.swift
//  TableViewController
//
//  Created by michael adams on 11/30/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var flagImage: UIImageView!
    
    @IBOutlet weak var abbrLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    

    var abbrText: String = ""
    var nameText: String = ""
    var imageText: String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if abbrText != ""{
            
            
            abbrLabel.text = abbrText
            nameLabel.text = nameText
            flagImage.image = UIImage(named: imageText)
            
        }
        
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

