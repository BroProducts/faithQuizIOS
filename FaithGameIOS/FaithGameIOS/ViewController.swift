//
//  ViewController.swift
//  FaithGameIOS
//
//  Created by Jonas Voland on 12.11.16.
//  Copyright © 2016 Jonas Voland. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {
    
    @IBOutlet weak var banner: GADBannerView!
    @IBOutlet weak var webView: UIWebView!
    var urlPath = "http://faithquiz.herokuapp.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.scrollView.bounces = false
        loadAdressUrl()
        
        banner.delegate = self
        
        banner.adUnitID = "ca-app-pub-7098553841143781/5868832951"
        banner.rootViewController = self
        banner.load(GADRequest())
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

