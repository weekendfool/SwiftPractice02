//
//  ViewController.swift
//  webViewSampleApp
//
//  Created by 尾原徳泰 on 2020/06/04.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //オプショナルバインディング
        if let url = NSURL(string: "https://www.google.com") {
            let repuest = NSURLRequest(url: url as URL)
            webView.load(repuest as URLRequest)
        }
    }


}

