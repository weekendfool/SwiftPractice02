//
//  ViewController.swift
//  tableViewReloadSample2App
//
//  Created by 尾原徳泰 on 2020/06/21.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var names = (0...99).map(){"row\($0)"}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
    @IBAction func pressReplaceButton(_ sender: Any) {
        names[50] = NSDate().description
    }
    
    @IBAction func pressReloadDataButton(_ sender: Any) {
        names[50] = NSDate().description
        
        tableView.reloadData()
        
    
       
    }
   

    @IBAction func pressReloadRowsButton(_ sender: Any) {
//        names[50] = NSDate().description
        
        let indexPath = IndexPath(row: 50, section: 0)
        
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
 
}

