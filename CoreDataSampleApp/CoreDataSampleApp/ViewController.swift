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
//import CoreData.NSManagedObjectContext

class ViewController: UIViewController {
    //パーツの紐付け
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    var box:[Person] = []
    
    let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }

    @IBAction func pressCreateButton(_ sender: Any) {
        
        let person = Person(context: managedContext)
        
        person.name = nameTextField.text
        
        person.age = Int16(ageTextField.text!)!
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        print(person.name)
        
        print(person.age)
    
        
    }
    
    @IBAction func pressReadButton(_ sender: Any) {
        
        
        let fetchRequest = NSFetchRequest<Person>(entityName: "Person")
        
        fetchRequest.returnsObjectsAsFaults = false

//        var error:NSError?
        
        do {
            box = try managedContext.fetch(fetchRequest)
            print("###############")
        } catch {
            print("error")
        }
        
        print("&&&&&&&&&&&&&&&&&&&&&&&&&&: \(box[0])")
//        for i in box {
//            print(i)
//        }
    }
}

