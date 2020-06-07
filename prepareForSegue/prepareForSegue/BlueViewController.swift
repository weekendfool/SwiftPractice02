//
//  BlueViewController.swift
//  prepareForSegue
//
//  Created by 尾原徳泰 on 2020/06/08.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    var blueText = ""
    
    @IBOutlet weak var blueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        blueLabel.text = blueText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
