//
//  ViewController.swift
//  SegmentSampleApp
//
//  Created by 尾原徳泰 on 2020/06/03.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segumentedControl: UISegmentedControl!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeSelect(_ sender: Any) {
        //何番めのものが選ばれたのかを格納
        let num = segumentedControl.selectedSegmentIndex
        //選ばれた番目の選択肢の名称を格納
        if let title = segumentedControl.titleForSegment(at: num) {
            //格納された情報をテキストに表示
            outputLabel.text = "\(num)番目の\(title)が選ばれた"
        }
    }
    
    @IBAction func presentButton(_ sender: Any) {
        //強制的に１を選ばせる
        segumentedControl.selectedSegmentIndex = 1
    }
}

