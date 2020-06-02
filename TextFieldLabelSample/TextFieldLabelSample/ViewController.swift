//
//  ViewController.swift
//  TextFieldLabelSample
//
//  Created by 尾原徳泰 on 2020/06/02.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presseButton(_ sender: Any) {
        //テキストフィールドの文をラベルに表示する
        outputLabel.text = inputTextField.text
    }
    
}

