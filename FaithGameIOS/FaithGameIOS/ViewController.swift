//
//  ViewController.swift
//  FaithGameIOS
//
//  Created by Jonas Voland on 12.11.16.
//  Copyright © 2016 Jonas Voland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var urlPath = "http://faithquiz.herokuapp.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.scrollView.bounces = false
        loadAdressUrl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadAdressUrl() {
        guard let url =  NSURL(string: urlPath) else { return }
        webView.loadRequest(NSURLRequest(url: url as URL) as URLRequest)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }

}

