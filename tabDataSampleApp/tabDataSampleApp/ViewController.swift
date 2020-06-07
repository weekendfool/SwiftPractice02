//
//  ViewController.swift
//  tabDataSampleApp
//
//  Created by 尾原徳泰 on 2020/06/07.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        //
        super.viewWillAppear(animated)
        //
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        delegate.count = delegate.count + 1
        
        redLabel.text = "\(delegate.count)"
    }

}

