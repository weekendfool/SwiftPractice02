//
//  ViewController.swift
//  SwichSampleApp
//
//  Created by 尾原徳泰 on 2020/06/03.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //スイッチが切り替わるたびに実行
    @IBAction func changeSwich(_ sender: Any) {
        //on,offはisOnがtrueだったらon
        if mySwitch.isOn {
            outputLabel.text = "ON"
        } else {
            outputLabel.text = "OFF"
        }
    }
    
}

