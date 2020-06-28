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
    
    var box:[String] = []
    
    let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }

    @IBAction func pressCreateButton(_ sender: Any) {
        //entityのアンラップ
        if let entity = NSEntityDescription.entity(forEntityName: "Person", in: managedContext) {
            //テキストのInt化　キャスト
            let age = Int(ageTextField.text!)
            //インスタンス作成
            let personObject = NSManagedObject(entity: entity, insertInto: managedContext)
            //core dataに情報を保存する処理
            personObject.setValue(nameTextField.text, forKey: "name")
            personObject.setValue(age, forKey: "age")
            
            
            
//            let v = (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
//            //エラー処理
//            var error:NSError?
//
//            if  {
//                print("保存に成功")
//            } else {
//                print("保存に失敗")
//            }
        
        }
    }
    
    @IBAction func pressReadButton(_ sender: Any) {
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        
//        var error:NSError?
        
        do {
            box = try managedContext.fetch(fetchRequest) as! [String]
        } catch {
            print("error")
        }
        
        for obj in box {
            print("name: \(obj)")
        }
    }
}

