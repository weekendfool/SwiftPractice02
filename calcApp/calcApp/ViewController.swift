//
//  ViewController.swift
//  calcApp
//
//  Created by 尾原徳泰 on 2020/06/04.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField2: UITextField!
    @IBOutlet weak var inputTextField1: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        //入力
        let number1 = (inputTextField1.text! as NSString).integerValue
        let number2 = (self.inputTextField2.text! as NSString).integerValue
        
        //処理
        let result = number1 + number2
        
        //出力
        outputLabel.text = "合計：\(result)"
    }
    
}

