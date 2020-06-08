//
//  ViewController.swift
//  tableViewSampleApp
//
//  Created by 尾原徳泰 on 2020/06/09.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //何回呼び出すのか、行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    //呼び出される。何を表示するのか、どの行を使うのか
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        var identifier = ""
        
        if indexPath.row % 2 == 0 {
            identifier = "Cell1"
        } else {
            identifier = "Cell2"
        }
        //画面作成で名付けたものを返り値に相応しくなるようにキャスト
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)! as UITableViewCell
        return cell
        
    }
}

