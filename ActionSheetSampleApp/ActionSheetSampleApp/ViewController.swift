//
//  ViewController.swift
//  ActionSheetSampleApp
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
        //アクションシートの作成
        let actionSheet = UIAlertController(title: "SampleActionSheet", message: "どちらを選びますか", preferredStyle: .actionSheet)
        //アラートアクションAの作成と追加
        let actionA = UIAlertAction(title: "選択肢A", style: .default, handler: { action in print("選択肢Aが選ばれた") })
        //アクションシートにアクションを追加
        actionSheet.addAction(actionA)
        
        //アラートアクションBの作成と追加
        let actionB = UIAlertAction(title: "選択肢B", style: .default, handler: { action in print("選択肢Bが選ばれた") })
        //アクションシートにアクションを追加
        actionSheet.addAction(actionB)
        
        //キャンセルボタンの実装
        let cansel = UIAlertAction(title: "キャンセル", style: .cancel, handler: { action in print("キャンセルが選ばれた") } )
        actionSheet.addAction(cansel)
        
        //アクションシートを表示
        present(actionSheet, animated: true, completion: nil)
    }
    
}

