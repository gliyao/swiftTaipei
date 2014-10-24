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
        
        let url = NSURL(string: web_url)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    // MARK: -UIWebView Delegate
    
    func webViewDidStartLoad(webView: UIWebView){
        indicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        indicator.stopAnimating()
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        indicator.stopAnimating()
    }
    
    
    @IBAction func share(sender: AnyObject)
    {
        // Make url String to NSURL
        let url = NSURL(string: web_url)!
        
        // Create activityViewController with it
        // 1st param are things you want to share
        // 2ed param are customize activities
        let activityViewController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        
        // We don't want post it on Weibo
        activityViewController.excludedActivityTypes = [UIActivityTypePostToWeibo, UIActivityTypePostToTencentWeibo]
        
        // Present the controller
        self.presentViewController(activityViewController, animated: true, completion: nil)
    }
}
