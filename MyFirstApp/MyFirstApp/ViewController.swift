//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 尾原徳泰 on 2020/06/02.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var labelText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        
        labelText.text = "my Label one"
        
        labelText2.text = "my Label two"
    }


}

