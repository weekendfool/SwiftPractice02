//
//  ViewController.swift
//  UnwindSegueDataSampleApp
//
//  Created by 尾原徳泰 on 2020/06/08.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yellowLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //グリーンから戻ってくる処理
    @IBAction func exitDone(segue:UIStoryboardSegue) {
        //SecondViewControllerをプロパティに格納する
        let green  = segue.source as! SecondViewController
        //yellowLabelに遷移前の画面の値を代入する
        yellowLabel.text = green.greenTextField.text
    }
    //グリーンでキャンセルボタンが押された時の処理
    @IBAction func exitCansel(segue:UIStoryboardSegue) {
        //特に処理を行わない
    }
}

