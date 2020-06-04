//
//  ViewController.swift
//  SlekderSampleApp
//
//  Created by 尾原徳泰 on 2020/06/04.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleSlider: UISlider!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //値が変化するたびに実行される
    @IBAction func sliderAction(_ sender: Any) {
        //sliderの値の変化によってラベルの値を変化させる
        outputLabel.text = "\(sampleSlider.value)"
    }
    
}

