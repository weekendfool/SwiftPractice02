//
//  ViewController.swift
//  ModeSampleApp
//
//  Created by 尾原徳泰 on 2020/06/24.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case "mode1Segue":
            (segue.destination as? SecondViewController)?.mode = .Mode1
            
        case "mode2Segue":
        (segue.destination as? SecondViewController)?.mode = .Mode2
            
        default:
            break
        }
    }

}

