//
//  ViewController.swift
//  WarCard
//
//  Created by Owen McGee on 7/25/19.
//  Copyright © 2019 Owen McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var playerscorelabel: UILabel!
    
    @IBOutlet weak var cpuscorelabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftimageview.image = UIImage(named: "card\(leftNumber)")
        
        rightimageview.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            leftScore += 1
            playerscorelabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            cpuscorelabel.text = String(rightScore)
        }
        else {
            
        }
    }
    
}

