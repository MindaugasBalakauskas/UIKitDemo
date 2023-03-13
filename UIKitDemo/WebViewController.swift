//
//  WebViewController.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 22/12/2022.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebData()
        // Do any additional setup after loading the view.
    }
    func loadWebData() {
        let url = URL(string: "https://www.google.com")
        webView.load(URLRequest(url: url!))
    }
}
