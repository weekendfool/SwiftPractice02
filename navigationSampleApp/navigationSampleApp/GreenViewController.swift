//
//  GreenViewController.swift
//  navigationSampleApp
//
//  Created by 尾原徳泰 on 2020/06/08.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    var greenText = ""
    @IBOutlet weak var greenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        greenLabel.text = greenText
    }
    


}
