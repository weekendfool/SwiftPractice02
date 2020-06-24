//
//  ViewController.swift
//  UnwindSegueSampleApp
//
//  Created by 尾原徳泰 on 2020/06/25.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func exitBySegueA(segue: UIStoryboardSegue) {
        print("exitBySegueA")
    }
    
    @IBAction func exitBySegueB(segue: UIStoryboardSegue) {
        print("exitBySegueB")
    }
}

