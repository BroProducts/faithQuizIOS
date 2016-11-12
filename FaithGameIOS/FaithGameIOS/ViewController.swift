//
//  ViewController.swift
//  FaithGameIOS
//
//  Created by Jonas Voland on 12.11.16.
//  Copyright © 2016 Jonas Voland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var WebView: UIWebView!
    var urlPath = "http://138.68.71.42:3031/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAdressUrl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadAdressUrl() {
        guard let url =  NSURL(string: urlPath) else { return }
        WebView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
    }

}

