//
//  ViewController.swift
//  perfoormSegueSampleApp
//
//  Created by 尾原徳泰 on 2020/06/08.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        //textFieldの中身によって場合わけ
        if let num = Int(redText.text!) {
            if num % 2 == 0 {
                performSegue(withIdentifier: "next", sender: sender)
            }
        }
    }
    
    @IBAction func exit(segue:UIStoryboardSegue) {
        
    }
    
}

