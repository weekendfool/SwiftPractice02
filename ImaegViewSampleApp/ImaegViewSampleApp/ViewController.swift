//
//  ViewController.swift
//  ImaegViewSampleApp
//
//  Created by 尾原徳泰 on 2020/06/03.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func presentButton(_ sender: Any) {
        //imageviewに選択した画像を表示させる
        sampleImageView.image = UIImage(named: "grade3_ganbarimashita")
    }
}

