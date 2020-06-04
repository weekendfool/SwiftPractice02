//
//  ViewController.swift
//  AlertViewContrlolerSample
//
//  Created by 尾原徳泰 on 2020/06/04.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pressButton(_ sender: Any) {
        //アラートの作成
        //アラートのタイトル設定
        let title = "AlertViewSample"
        //アラートの内容設定
        let message = "アラートの表示"
        //アラートの作成
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //アラートのOKボタン作成
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        //アラートの表示
        present(alert, animated: true, completion: nil)
    }
}

