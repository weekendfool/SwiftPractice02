//
//  ViewController.swift
//  CoreDataSampleApp
//
//  Created by 尾原徳泰 on 2020/06/26.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    var managedContext = (UIApplication.shared.delegate as! AppDelegat).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

