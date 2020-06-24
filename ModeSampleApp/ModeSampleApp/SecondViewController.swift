//
//  SecondViewController.swift
//  ModeSampleApp
//
//  Created by 尾原徳泰 on 2020/06/24.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //2つの値を持ったMode型の構造体を定義している
    enum Mode {
        case Mode1, Mode2
    }
    //プロパティのデータ型がmode型
    var mode = Mode.Mode1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        switch mode {
        case .Mode1:
            view.backgroundColor = UIColor.red
        case .Mode2:
            view.backgroundColor = UIColor.green
        default:
            view.backgroundColor = UIColor.gray
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
