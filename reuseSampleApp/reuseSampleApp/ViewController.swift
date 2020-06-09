//
//  ViewController.swift
//  reuseSampleApp
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
    //何行呼ぶのか
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    //呼び出すセルの形式
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //dequeueReusableCell:cellは再利用されている
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
//        cell.textLabel?.text = "\(indexPath.row)"
        
        if cell.textLabel?.text == "Title" {
            cell.textLabel?.text = "\(indexPath.row)"
        }
        
        return cell
    }

}

