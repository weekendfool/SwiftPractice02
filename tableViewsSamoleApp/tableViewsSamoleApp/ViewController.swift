//
//  ViewController.swift
//  tableViewsSamoleApp
//
//  Created by 尾原徳泰 on 2020/06/10.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //tableviewが複数でも一つで大丈夫
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //引数としてのtableViewを確認して条件分岐
        if tableView == tableView1 {
            return 10
        } else {
            return 20
        }
    }
    //tableviewが複数でも一つで大丈夫
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tableviewが複数でも一つで大丈夫
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! UITableViewCell
        //引数としてのtableViewを確認して条件分岐
        if tableView == tableView1 {
            cell.textLabel?.text = "table1:\(indexPath.row)"
        } else {
            cell.textLabel?.text = "table2:\(indexPath.row)"
        }
        return cell
    }
}

