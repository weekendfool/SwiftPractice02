//
//  SecondViewController.swift
//  UnwindSegueSampleApp
//
//  Created by 尾原徳泰 on 2020/06/25.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var segueController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pressDoneButton(_ sender: Any) {
        switch segueController.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: "segueA", sender: sender)
        case 1:
            performSegue(withIdentifier: "segueB", sender: sender)
        default:
            print("do nothing")
        }
    }
    

}
