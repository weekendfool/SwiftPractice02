//
//  ViewController.swift
//  userDefaultSampleApp
//
//  Created by 尾原徳泰 on 2020/06/11.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        UserDefaults.standard.set(textField.text, forKey: "string")
    }
    
    
}

