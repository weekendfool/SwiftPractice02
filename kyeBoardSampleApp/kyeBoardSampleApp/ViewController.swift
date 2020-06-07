//
//  ViewController.swift
//  kyeBoardSampleApp
//
//  Created by 尾原徳泰 on 2020/06/07.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        //テキストフィールドの選択状態を解除してキーボードを隠す
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
    }
    
}

