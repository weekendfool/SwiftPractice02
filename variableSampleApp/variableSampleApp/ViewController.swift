//
//  ViewController.swift
//  variableSampleApp
//
//  Created by 尾原徳泰 on 2020/06/04.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //基本的に変数を使ってプログラムを書く
    //プロパティ：クラスの中でメソッドの外で宣言したもの
    var p1 = 123

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func method1() {
        //変数：メソッドやアクションの中で宣言したもの
        var v1 = 234
        
        print(p1)
        print(v1)
    }
    
    func method2() {
        //変数
        var v2 = 345
        
        print(p1)
        print(v2)
    }
    

}

