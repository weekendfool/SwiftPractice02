//
//  ViewController.swift
//  prepareForSegue
//
//  Created by 尾原徳泰 on 2020/06/08.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //この画面に戻れるようにする関数
    @IBAction func exit(segue:UIStoryboardSegue) {
        
    }

    //画面遷移する直前に呼び出される処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //今反応しているsegueがnextSegueかの確認
        if segue.identifier == "nextSegue" {
            //定数に遷移先のBlueViewControllerを格納
            let blue = segue.destination as! BlueViewController
            //遷移先の変数にテキストフィールドの値を代入してやる
            blue.blueText = redTextField.text!
        }
    }
}

