//
//  ViewController.swift
//  MethodSampleApp
//
//  Created by 尾原徳泰 on 2020/06/04.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        method1()
        method2(a: 2, b: 3)
        let result1 = method3()
        let result2 = method4(a: 3, b: 4)
        print(result1)
        print(result2)
    }
    //処理を行うだけ
    func method1() {
        print("method1")
    }
    //インプッとあり、処理を行う
    func method2(a: Int, b: Int) {
        print("method2: a=\(a) b=\(b)")
    }
    //アウトプットあり、処理を行う
    func method3() -> Int {
        print("method3")
        return 123
    }
    //インプットとアウトプットあり、処理を行う
    func method4(a:Int, b:Int) -> Int {
        print("method4 a=\(a) b=\(b)")
        return 234
    }
}

