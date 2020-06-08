//
//  ViewController.swift
//  navigationSampleApp
//
//  Created by 尾原徳泰 on 2020/06/08.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //greenから戻る処理
    @IBAction func exit(segue:UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //使用されたsegueがnextか確認
        if segue.identifier == "next" {
            //今いるviewControllerの次の画面であるUINavigationControllerを定数に格納
            let nav = segue.destination as! UINavigationController
            //UINavigationControllerの次の画面であるGreenViewControllerを指定して格納
            let green = nav.topViewController as! GreenViewController
            //GreenViewControllerの変数に代入
            green.greenText = redText.text!
        }
    }
}

