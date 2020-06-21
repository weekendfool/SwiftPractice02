//
//  ViewController.swift
//  tableViewReloadSampleApp
//
//  Created by 尾原徳泰 on 2020/06/15.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var datas:[String] = []
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        //配列の個数だけ展開する
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAt: indexPath = \(indexPath.row)")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        cell.textLabel?.text = datas[indexPath.row]
        
        return cell
    }
    
    @IBAction func pressAddButton(_ sender: Any) {
        print("pressAddButton")
        datas.append("\(count)")
        count += 1
        
        print(count)
    }
    
    @IBAction func pressReloadButton(_ sender: Any) {
        print("pressReloadButton")
        
        tableView.reloadData()
        
    }
    
    @IBAction func pressClearButtom(_ sender: Any) {
        print("pressClearButtom")
        
        datas = []
        
        tableView.reloadData()
    }
    
}

