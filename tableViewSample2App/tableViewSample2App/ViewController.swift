//
//  ViewController.swift
//  tableViewSample2App
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


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""
        switch indexPath.row {
        case 0:
            identifier = "cell1"
        case 1:
            identifier = "cell2"
        case 2:
            identifier = "cell3"
        case 3:
            identifier = "cell4"
        default:
            identifier = "cell5"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)! as UITableViewCell
        
        if identifier != "cell2" {
        //？：textLabelが存在したら実行
            cell.textLabel?.text = "text1"
            cell.detailTextLabel?.text = "text2"
        }
        return cell
        
        
    }
}

