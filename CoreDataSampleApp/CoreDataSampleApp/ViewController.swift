//
//  ViewController.swift
//  CoreDataSampleApp
//
//  Created by 尾原徳泰 on 2020/06/26.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit
//CoreDataをインポート
import CoreData

class ViewController: UIViewController {
    //パーツの紐付け
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    //
    var person:[String] = []
    //
    var managedContext = (UIApplication.shared.delegate as! AppDelegat).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let conditions = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        
        do　{
            person = try managedContext.fetch(conditions) as! [String]
        }　catch　{
            print("エラー")
    }

    @IBAction func pressCreateButton(_ sender: Any) {
        //
        if let appDelegate = UIApplication.shared.delegate as? AppDelegat {
            //
            
            let entity = NSEntityDescription.entity(forEntityName: "Person", in: managedContext)
            let age = Int(ageTextField.text!)
            
        }
        {
            let personObject = persistentContainer.
        }
    }
    
    @IBAction func pressReadButton(_ sender: Any) {
    }
}

