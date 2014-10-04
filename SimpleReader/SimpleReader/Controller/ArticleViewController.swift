//
//  ArticleViewController.swift
//  SimpleReader
//
//  Created by Liyao on 2014/10/4.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController, UIWebViewDelegate {
    var snippet : String = ""
    var web_url : String = ""
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("We got snippet = \(snippet)")
        println("We got web_url = \(web_url)")
        
        let url = NSURL.URLWithString(web_url)
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(webView: UIWebView){
        indicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        indicator.stopAnimating()
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        indicator.stopAnimating()
    }
}
